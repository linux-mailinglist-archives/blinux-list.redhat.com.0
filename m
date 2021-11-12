Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FE9C44E021
	for <lists+blinux-list@lfdr.de>; Fri, 12 Nov 2021 03:08:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1636682929;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=3bKJ71hpmdrj7JPFjulppUcrC61zQTnRVnX6sEfnDj4=;
	b=JjUsA2YW3AG8eXhegPOXNgpf/3oFXtQReheCKSvLixZg4jk1WuMi4ZJUs2v1Lx8gT6q6x/
	uap06uB0jS+RSoLWBu4crw0xKpkFKKpdkEztGW2OoHaLCD3ec2nW6qr9Ta2sH1usGPigDS
	44XA+qOk1Zf0KUPFGs0cWMfI080hVuM=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-512-s4TOoLXVMeq86a47axvwdw-1; Thu, 11 Nov 2021 21:08:45 -0500
X-MC-Unique: s4TOoLXVMeq86a47axvwdw-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 70D3915726;
	Fri, 12 Nov 2021 02:08:41 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 8CF6760C7F;
	Fri, 12 Nov 2021 02:08:40 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 344441819AC1;
	Fri, 12 Nov 2021 02:08:37 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com
	[10.11.54.1])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1AC28Uq9007417 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 11 Nov 2021 21:08:30 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id F09974010FF7; Fri, 12 Nov 2021 02:08:29 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id EAE8140CFD04
	for <blinux-list@redhat.com>; Fri, 12 Nov 2021 02:08:29 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id D1475181E060
	for <blinux-list@redhat.com>; Fri, 12 Nov 2021 02:08:29 +0000 (UTC)
Received: from mail-qv1-f48.google.com (mail-qv1-f48.google.com
	[209.85.219.48]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-472-GUwjXHT8NmW68erIAJ1xPQ-1; Thu, 11 Nov 2021 21:08:28 -0500
X-MC-Unique: GUwjXHT8NmW68erIAJ1xPQ-1
Received: by mail-qv1-f48.google.com with SMTP id b11so5310551qvm.7
	for <blinux-list@redhat.com>; Thu, 11 Nov 2021 18:08:28 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=TQks+5L1Fv+0Fh1bTVsSj2t/X9nIZ32WOengaXc8ou8=;
	b=F4zjPiLUAjpHukwO1bvHQ8DqhPrLYNFPD3wzVwEmgnbkUFlRn1Kpb4tke4vjmbcI7h
	IdWuzY/aXMiSbHmF9csR64Q3UraKazYlBeKqcflQAlohba6zNBit7O6fxA7xnmtcxv7x
	e1hHGGhuQr0v+o3Bik0IdNSqm4LqS7iyZcuMQyLiu/Ol4fe1okyqH4LR2DHenW+2OiBP
	fe/pZzp+p0/t4UjgHVn/ItdnMJwDAt4Tv+raqfKt4ln5pg/qkdzJ9U7DgpWX3w5j7FbX
	gV//36w8SF1fjBHoNKWRHX/COgBZ8aC7xGZMpw8HzalV2Ifeay4RAkWi41u1CIRIyp0K
	MoBg==
X-Gm-Message-State: AOAM531XEQ0jfelIfPzQGxgBdVLQQKZOaTkHbwp5TYKx0m0M+Yt09QMN
	TY6f6LFqa5CZ4+eLAcfIGoiOtLGeKe99YA==
X-Google-Smtp-Source: ABdhPJzAQSyD9fBblnl69OIY7K4EAiqcJrZXy/++f5QQNPx9YqGth40Zz82kp501M6EHUjkzFcaFsA==
X-Received: by 2002:a05:6214:240c:: with SMTP id
	fv12mr11169728qvb.58.1636682907390; 
	Thu, 11 Nov 2021 18:08:27 -0800 (PST)
Received: from penguin.example.slint ([2601:192:4c80:1420::4f20])
	by smtp.gmail.com with ESMTPSA id
	p18sm2338103qtk.76.2021.11.11.18.08.26 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Thu, 11 Nov 2021 18:08:26 -0800 (PST)
Subject: Re: How do you format a disk using slint?
To: blinux-list@redhat.com
References: <c8bb974c-f712-d963-1ecb-21d4b398d110@gmail.com>
Message-ID: <45dfbbc5-04c2-9f49-a595-581537acbafe@gmail.com>
Date: Thu, 11 Nov 2021 21:08:25 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
	Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <c8bb974c-f712-d963-1ecb-21d4b398d110@gmail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.1
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

SWYgeW91IHdhbnQgdG8gdXNlIGEgZ3VpIHRvb2wgZm9yIGZvcm1hdHRpbmcgZGlza3MgaW4gc2xp
bnQsIHlvdSdsbCBoYXZlIAp0byBpbnN0YWxsIGl0LCBmaXJzdC4KCgpzbGFwdC1zcmMgZ25vbWUt
ZGlzay11dGlsaXR5CgoKYXMgdGhlIHJvb3QgdXNlci7CoCBZb3UgY291bGQgYWxzbyBkbyBzb21l
dGhpbmcgbGlrZQoKbWtmcy5mYXQgLWYgMTYgL2Vldi9mb28KCgoKCndoZXJlIC9kZXYvc29vIGlz
IHlvdXIgdXNiIGRpc2suwqAgQmVmb3JlIGRvaW5nIGFueSBvZiB0aGlzLCBiZSBzdXJlIHlvdSAK
a25vdyBob3cgeW91ciBkaXNrcyBhcmUgaWRlbnRpZmllZC7CoCBGcm9tIHRoZSB0ZXJtaW5hbCAo
Z3VpIG9yIApjb25zb2xlKTrCoCBsc2JsawoKCkhUSCwKCgoKRGF2ZQoKCgoKT24gMTEvMTEvMjEg
ODozNyBQTSwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiB3cm90ZToKPiBJcyB0
aGlzIHRhc2sgdW5kb2FibGUgaW4gdGhlIEdVSSBlbnZpcm9ubWVudCBhbmQgSSBoYXZlIHRvIGxv
b2sgZm9yIAo+IHRoZSB1c2Ugb2YgdGVybWluYWwgZm9yIGZvcm1hdHRpbmcgZGlza3M/CgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpCbGludXgtbGlzdCBt
YWlsaW5nIGxpc3QKQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQpodHRwczovL2xpc3RtYW4ucmVkaGF0
LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0

