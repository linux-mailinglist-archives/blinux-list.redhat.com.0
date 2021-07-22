Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id A431E3D2C5F
	for <lists+blinux-list@lfdr.de>; Thu, 22 Jul 2021 21:07:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1626980823;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=575mCxui9Ql+RaIeAG3/zUg8WF/Un5lO3qtVQkQyon8=;
	b=V3IvfiSxUCY+fcPBveJRZQpK1Rd9NNgAM7wCvTjisShZ76+5PcaxAhs9lhUcLrpmOWSflt
	lxzAhsZHgWbtRqmLeGNCB231TBLs37gw0rrV0tjOS23geOnI/YcN2HlRGbo9LdCBDQJ+d4
	VzOV0tfQUtv1BRHfQvOXVJ1wLq/uhGk=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-531-kIx8Plz5M9inHVmTvgbamw-1; Thu, 22 Jul 2021 15:07:02 -0400
X-MC-Unique: kIx8Plz5M9inHVmTvgbamw-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id AA5A3100CF6E;
	Thu, 22 Jul 2021 19:06:57 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id E9FF0102AE7E;
	Thu, 22 Jul 2021 19:06:56 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id B44894BB7C;
	Thu, 22 Jul 2021 19:06:55 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 16MJ6n4O011059 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 22 Jul 2021 15:06:49 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id C5797202BFCD; Thu, 22 Jul 2021 19:06:49 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id C1305202BFC5
	for <blinux-list@redhat.com>; Thu, 22 Jul 2021 19:06:46 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id D83E61064C75
	for <blinux-list@redhat.com>; Thu, 22 Jul 2021 19:06:46 +0000 (UTC)
Received: from mail-qk1-f172.google.com (mail-qk1-f172.google.com
	[209.85.222.172]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-127-CzbofxcXNaedW8Jvf0xBSA-1; Thu, 22 Jul 2021 15:06:44 -0400
X-MC-Unique: CzbofxcXNaedW8Jvf0xBSA-1
Received: by mail-qk1-f172.google.com with SMTP id a80so6413424qkg.11
	for <blinux-list@redhat.com>; Thu, 22 Jul 2021 12:06:44 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=R7pP9Mm7crrRdBoAd2R/7WTIz8KTt5xf8zV0Afvm5oM=;
	b=Tfzg+wR5u/up7HbWyWeN4KNveXoq7OP7ivmYVIDLXPbBB/wBuQ42qQiBFmPLP4jJoF
	xg+/kAXKxrTSiZ5k+55D558y/HOorksfj8m/WlmghILv2uH44v85sF5i43iden6pIL9s
	r3jrhNGY0mi7qAsUcDvN1Z7+ZxhL4xTX60g+JvdXCiEKy55oxVKjBrvf8lhIB1MxeJIR
	vVKMzdlsVpfF3SljrYMXv/Q8e6dngQvEzHon+QUTQfCUBLv2Vc6kHmzRQD55bo7xjJ4B
	UcxhxcnxbiOaePToTFyclinlpLk6NfHuCnsmOMXXNECwWTI3865f/2EqMnQax7FxIsJP
	n60w==
X-Gm-Message-State: AOAM533nPyka9z1tPtWGtvKYWOyCGnfrVihQ3wRJtdTMjU8GICizvfxr
	ZhNhNr8gokPxkoYrNyAd2glNC7TaSISIeg==
X-Google-Smtp-Source: ABdhPJxHLonBuQvMjR9vtcXSyAqikJwNAFc7bOZxoVKInCyq4S4KWdNsJQ3Mt27m5DEvJhW2RXE4Cw==
X-Received: by 2002:a37:9306:: with SMTP id v6mr1165926qkd.476.1626980804053; 
	Thu, 22 Jul 2021 12:06:44 -0700 (PDT)
Received: from thinkpad.example.slint ([2601:192:4c80:1420::adcc])
	by smtp.gmail.com with ESMTPSA id
	ay31sm3384425qkb.41.2021.07.22.12.06.43 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Thu, 22 Jul 2021 12:06:43 -0700 (PDT)
Subject: Re: Adjusting lightdm screenreader volume (How do I...)
To: blinux-list@redhat.com
References: <b03aafa4-daf7-d333-f8dc-80aa029225c9@gmail.com>
	<210fc29d-9144-c009-3557-fd2304aa47cd@gmail.com>
	<6a20948b-bceb-bc96-c787-cf3f2c27c2af@gmail.com>
	<84a2815d-0461-28bc-8f52-6d0f24e34d60@gmail.com>
Message-ID: <70e8f011-eec9-ba77-f7e4-33bf3d610e33@gmail.com>
Date: Thu, 22 Jul 2021 15:06:42 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
	Thunderbird/78.12.0
MIME-Version: 1.0
In-Reply-To: <84a2815d-0461-28bc-8f52-6d0f24e34d60@gmail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
X-loop: blinux-list@redhat.com
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.12
Precedence: junk
Reply-To: blinux-list@redhat.com
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://listman.redhat.com/mailman/options/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <https://listman.redhat.com/archives/blinux-list>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://listman.redhat.com/mailman/listinfo/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=subscribe>
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

SSBoYXZlIGEgbGFwdG9wIGFuZCB1c2UgdGhhdCBsYXlvdXQsIGluIHdoaWNoIGNhcHMtbG9jayBp
cyB0aGUgJ29yY2EnIAprZXkuwqAgT24gaW5pdGlhbCBzZXR1cCwgSSB1c2UKCiJvcmNhIC0tc2V0
dXAiLCAod2l0aG91dCB0aGUgcXVvdGVzKSBmcm9tIHRoZSAncnVuJyBkaWFsb2d1ZS4gVGhpcyBp
cyAKdGhlIGNvbW1hbmQgbGluZSB0aGF0IHdpbGwgbGF1bmNoIHRoZSBwcmVmZXJlbmNlcyBndWku
IFNpbmNlIHlvdSBkb24ndCAKaGF2ZSBhbiBpbnNlcnQga2V5LCB5b3UgbWF5IHByZWZlciB0aGUg
bGFwdG9wIGxheW91dC4KCgoKSFRILAoKCgpEYXZlwqAgSC4KCgoKCk9uIDcvMjIvMjEgMjo1MyBQ
TSwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiB3cm90ZToKPiBrZXlib2FyZCBk
b2VzIG5vdCBoYXZlIGFuIEluc2VydCBrZXksIHRoYXQgaXMgd2h5IEkgZG9uJ3Qgc2ltcGx5IG9w
ZW4gCj4gdGhlIE9yY2EgcHJlZmVyZW5jZXMuIAoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0CkJsaW51eC1saXN0
QHJlZGhhdC5jb20KaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9i
bGludXgtbGlzdA==

