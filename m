Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 711A23E0B43
	for <lists+blinux-list@lfdr.de>; Thu,  5 Aug 2021 02:33:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1628123618;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=THCexu5uPjoeal5nguU1uXLkQXvwTPL8xobQKbFWnP4=;
	b=SYTGBI4y0fm/jpPnSqbHfoC5zu6xTJ1iFdyhAK69Qw+ilBg/xeGGtYINLtw1qDgfQIdXrc
	pQTB1DwHq/LSJodq/DDo9JG8sHpuCBJ9ptJzbY3Q7nDrYly5FntM+lWHMv/Ny3iaC5mJZm
	PSCaeUE6qJ+AMp/5gya7ZCuJ255iMt8=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-143-vA5hE1u8PlmX2-vgdNe7Aw-1; Wed, 04 Aug 2021 20:33:36 -0400
X-MC-Unique: vA5hE1u8PlmX2-vgdNe7Aw-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 2F22B824F8D;
	Thu,  5 Aug 2021 00:33:32 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id B715B60BD9;
	Thu,  5 Aug 2021 00:33:31 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 0FFAC180BAB0;
	Thu,  5 Aug 2021 00:33:30 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1750Ssp1026535 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 4 Aug 2021 20:28:54 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id EF435FC757; Thu,  5 Aug 2021 00:28:53 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id E9E751032B4
	for <blinux-list@redhat.com>; Thu,  5 Aug 2021 00:28:50 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 4712A8CA942
	for <blinux-list@redhat.com>; Thu,  5 Aug 2021 00:28:50 +0000 (UTC)
Received: from mail-qt1-f173.google.com (mail-qt1-f173.google.com
	[209.85.160.173]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-441-xWotymZQPNmRZEz09uK29A-1; Wed, 04 Aug 2021 20:28:48 -0400
X-MC-Unique: xWotymZQPNmRZEz09uK29A-1
Received: by mail-qt1-f173.google.com with SMTP id h27so2687156qtu.9
	for <blinux-list@redhat.com>; Wed, 04 Aug 2021 17:28:48 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=OI4qV1voIh3eFvRQaU3WtBnu3LDPIROH0xijU1qeMXk=;
	b=aDbGPd5h6FkARyposGQ3Iyv46W2eBfj6eJUL+YzB1ztxk7trK6Z+7x/1TqEwl9U305
	7tBznJjWItYgrH09pearmO4e8uIAsr5oH4+VQTiZUhfpoL0oBJwVUOPojQXQMEQlC0Q1
	aS3zTXH9Gn3qR1hPODumW8XXrTxXiVW/cHRiA2uBK8QAKH8fUJ9NjrrxgRBH2t92dipP
	irRioEA3il/RWP7+U/St7Y+hiiVkrlAmYOTgyL72ltqq8PxfTWB+muuNx4Q0PyY+44pt
	m/QsqUmc2MJxH+8RDU0U4qLtGN1BySfdWr4hyCY3G6zAlN5WbUmOjrpHziyWM9keEGey
	Zaow==
X-Gm-Message-State: AOAM533JxqCkxqmVh4THH6F6RVhJqVL/9NZcxRuBBZ0JLorTo8RbuCM9
	4n+YJJ00bDbHSC3NH5e2Wx0gb36K1lVemA==
X-Google-Smtp-Source: ABdhPJwQhguVxT3rIlPIEKGEpBLh/9QH2SbSLI6zBSN8DreUkpEFJeSXnQ0+Ukmm8Z45G8l9s4foOA==
X-Received: by 2002:ac8:7a86:: with SMTP id x6mr2058089qtr.284.1628123327634; 
	Wed, 04 Aug 2021 17:28:47 -0700 (PDT)
Received: from thinkpad.example.slint ([2601:192:4c80:1420::cae5])
	by smtp.gmail.com with ESMTPSA id
	r29sm2227280qkm.43.2021.08.04.17.28.46 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Wed, 04 Aug 2021 17:28:47 -0700 (PDT)
Subject: Re: Solus DE observations
To: blinux-list@redhat.com
References: <3c0f9041-d6e9-5fb5-2e9c-a96dc59bd86c@gmail.com>
	<7b4a0e8e-f7b2-af91-975c-d3ca3a3cbdcf@gmail.com>
	<76FFA217-1F68-444A-8DB7-C465759CD123@gmail.com>
	<fd407fcb-4241-4fd6-49e8-bd25a69f3348@gmail.com>
	<DC07B063-C1B9-49B0-89BA-7F340746AB3D@gmail.com>
	<57bd933a-c517-2ec6-0f1e-716e4a81908b@gmail.com>
	<4020EC8C-BE9D-4ABC-A1B6-EFDCB9F261ED@gmail.com>
	<2a58e6d9-54c9-8d66-7433-aebc6fcf687c@gmail.com>
	<229F2558-87BD-4F2F-907D-218C2D542480@gmail.com>
	<09938f56-8ec8-a34b-65a3-9151aaab74b9@gmail.com>
	<EFCC025D-5C8B-4997-9BDC-D0243384A3D1@gmail.com>
	<alpine.NEB.2.23.451.2108041823280.8697@panix1.panix.com>
	<df6422c1-cf3e-2e3b-ffea-4afb43627a62@gmail.com>
	<229C49E8-4453-4759-A7DE-712BDD5AC3FD@gmail.com>
	<f1f450f1-b1ef-84d0-a4d1-c7515d21b8ef@gmail.com>
Message-ID: <5d8da35a-6e42-431d-1e4f-89a78ecb1b6a@gmail.com>
Date: Wed, 4 Aug 2021 20:28:45 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
	Thunderbird/78.12.0
MIME-Version: 1.0
In-Reply-To: <f1f450f1-b1ef-84d0-a4d1-c7515d21b8ef@gmail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.79 on 10.11.54.5
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

VGhhbmsgeW91IGZvciB0aGlzIcKgIG1pbmltYWwgb3Igbm8gYnVpbGRpbmcgcmVxdWlyZWQuwqAg
SSBzdXBwb3NlLCBzaW5jZSAKU29sdXMgaXMgYSBnYW1lcnMnIGRpc3RybywgdGhleSd2ZSBvcHRp
bWl6ZWQgdGhlaXIgYnVpbGRzIG9mIHdpbmUgYW5kIAp3aW5ldHJpY2tzLCBpbiBwYXJ0aWN1bGFy
LsKgIEFuZCwgdGhlcmUgbWlnaHQgbm90IGJlIHRoZSBsYXRlbmN5IGlzc3VlcyAKb25lIG1pZ2h0
IGZpbmQgZWxzZXdoZXJlLgoKCkNoZWVycywKCgpEYXZlwqAgSC4KCgoKU2VudCBmcm9tIG15IExl
bm92byBUaGlua3BhZCwgcnVubmluZyBTbGludCBHTlUvTGludXguICBodHRwczovL3NsaW50LmZy
IGZvciBpbmZvCgpPbiA4LzQvMjEgNjo1OCBQTSwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlz
Y3Vzc2lvbiB3cm90ZToKPiBhdWRpb2dhbWUtbWFuYWdlciAtYwo+Cj4KPiBJIGhhdmUgaXQgd29y
a2luZyBvbiBTb2x1cyBieSBpbnN0YWxpbmcgd2luZSwgd2luZXRyaWNrcywgc294IGFuZCBkaWFs
b2cKPgo+IFRoYXQncyBsaXRlcmFsbHkgYWxsLCBhbmQgYWxsIGFyZSBpbiB0aGUgcmVwb3Mgb2Yg
U29sdXMuIFNvIHN1ZG8gZW9wa2cgCj4gaW5zdGFsbCBzb3ggd2luZSB3aW5ldHJpY2tzIGRpYWxv
Zwo+CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpCbGlu
dXgtbGlzdCBtYWlsaW5nIGxpc3QKQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQpodHRwczovL2xpc3Rt
YW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0

