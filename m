Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 6420948284F
	for <lists+blinux-list@lfdr.de>; Sat,  1 Jan 2022 20:22:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1641064974;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=dceRAqAV2Gz9v09NPlgba754SsdF0u5A+S3C+9OFvZg=;
	b=OKiKqODrSHRnS+jzeUh60GLXZAFozN4IQhwFkoZmTLLkMLKAAGpevH5OAMlrUK7IuP8mFT
	P/lBrhv48W0O0S6LZV5qQ19yGgG0B8v2lCMd/J1QVz/xDDcBtxOOfC/OEVZFWvgUDSHETA
	padjsyDZiByDtUPBVk6mQ4gO0yLT6Jw=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-443-TVO6lv-1PzWe8FSmxu_-2Q-1; Sat, 01 Jan 2022 14:22:50 -0500
X-MC-Unique: TVO6lv-1PzWe8FSmxu_-2Q-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 66DB0801B2A;
	Sat,  1 Jan 2022 19:22:46 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 4C54345D6D;
	Sat,  1 Jan 2022 19:22:46 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 281E31806D1C;
	Sat,  1 Jan 2022 19:22:46 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 201JMhQB014979 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 1 Jan 2022 14:22:43 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 2F87D112131B; Sat,  1 Jan 2022 19:22:43 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 2AB881121319
	for <blinux-list@redhat.com>; Sat,  1 Jan 2022 19:22:40 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 1B31480A0B8
	for <blinux-list@redhat.com>; Sat,  1 Jan 2022 19:22:40 +0000 (UTC)
Received: from mail-qk1-f180.google.com (mail-qk1-f180.google.com
	[209.85.222.180]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-413-Di1Jt49wPB-pgaS8k75enw-1; Sat, 01 Jan 2022 14:22:38 -0500
X-MC-Unique: Di1Jt49wPB-pgaS8k75enw-1
Received: by mail-qk1-f180.google.com with SMTP id l11so27610776qke.11
	for <blinux-list@redhat.com>; Sat, 01 Jan 2022 11:22:38 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=BPzqMO4SMlOn4hjp0b/WNdZTbHAPKA8QGn3Pdt9MxCo=;
	b=wk0IYO/FOh5BamzL8XMu+mz7vkboYNTX+H7lOdFlgqmVZoYfxSS/bXgReb9WIkTfaT
	tpQxKLB2eYvAuxfr/xETR2vCCQgoAdVTOBRVJtKjEM+2qMTayxpJJy3O79kqiECf3rjy
	B4geYnmH86h7+KvM7zdTGVCg/Gx5BDoOkxWGt7MToYlQxj+18XA2Z+BzUfms7/hwPPPd
	5ruF5Y5N3X4U52PJ1zzO9vdCE1XS+Rse/rsmIZk++jyJXlRxo9VAhnOGvotGA2dZX7hZ
	AidJJA5u3QWM+9dvbcHweBzrciPdBuJZFP+kzaJm83iyLtcLBeOiTEOjOf7y+aTxMSWk
	GJ8A==
X-Gm-Message-State: AOAM530NMqQjn78HamH+IoDnbbjIl0BSEWob0lUCCwj+aqCWI+YEY0s4
	jp1k9IAPV/2y2FOVAR7ECWvwcOP44GQ=
X-Google-Smtp-Source: ABdhPJxDgfi/xh4RM0LgppWCPxY5us+scI6/pH75Twoh17ArdR6067hEhLYut/OgdSIjcBKXELJ3XQ==
X-Received: by 2002:a37:6786:: with SMTP id
	b128mr27278163qkc.750.1641064957925; 
	Sat, 01 Jan 2022 11:22:37 -0800 (PST)
Received: from ?IPv6:2601:192:4c80:1420:52ae:3e59:80bc:ac89?
	([2601:192:4c80:1420:52ae:3e59:80bc:ac89])
	by smtp.gmail.com with ESMTPSA id
	j14sm24542486qkp.28.2022.01.01.11.22.37 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Sat, 01 Jan 2022 11:22:37 -0800 (PST)
Subject: Re: Recovering shift deleted data
To: blinux-list@redhat.com
References: <7c2c5806-4581-dc53-8e4e-750d9098398b@seznam.cz>
	<20220101131706.5185e74d@bigbox.attlocal.net>
Message-ID: <b1559cb9-7886-7175-685a-7a6ad7e5689c@gmail.com>
Date: Sat, 1 Jan 2022 14:22:36 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
	Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <20220101131706.5185e74d@bigbox.attlocal.net>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

SWYsIGluIGEgZmlsZSBtYW5hZ2VyIHdpbmRvdywgeW91IGhhdmUgZmlsZXMgc2VsZWN0ZWQsIGFu
ZCB5b3UgZG8gCidzaGlmdCtkZWxldGUnLCB0aGV5J3JlIGRlbGV0ZWQsIGluc3RlYWQgb2YgZ2V0
dGluZyBtb3ZlZCB0byB0cmFzaC7CoCBJbiAKYWxsIHRoZSBpbnN0YWxsYXRpb25zIEkndmUgZG9u
ZSwgSSd2ZSBoYWQgdG8gZW5hYmxlIHRoaXMgZmVhdHVyZS7CoCAKVGhlcmUncyBhIHNldHRpbmcs
IGluIGNhamEgcHJlZmVyZW5jZXMsIHRoYXQgaXMgYSBjaGVjayBib3ggc2F5aW5nIApzb21ldGhp
bmcgbGlrZSwgImluY2x1ZGUgYSBkZWxldGUgY29tbWFuZCB0aGF0IGJ5cGFzc2VzIHRyYXNoPyLC
oCBUaGVyZSdzIAphbHNvIGEgd2FybmluZyB0aGF0IGFuIHVucmVjb3ZlcmFibGUgZGVsZXRpb24g
d2lsbCBoYXBwZW4uLi4KCgoKSFRILAoKCgpEYXZlCgoKCgpPbiAxLzEvMjIgMjoxNyBQTSwgTGlu
dXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiB3cm90ZToKPiBUaW0gaGVyZS4gIEknbSBu
b3QgcXVpdGUgc3VyZSB3aGF0ICJyZWNvdmVyeSBzaGlmdCBkZWxldGVkIiBtZWFucy4KPiBPciBh
dCBsZWFzdCB3aGF0IHRoZSAic2hpZnQiIHBhcnQgZG9lcy4KCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkJsaW51eC1saXN0IG1haWxpbmcgbGlzdApCbGlu
dXgtbGlzdEByZWRoYXQuY29tCmh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlz
dGluZm8vYmxpbnV4LWxpc3Q=

