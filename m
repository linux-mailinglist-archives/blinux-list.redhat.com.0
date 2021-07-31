Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id 0CC9B3DC792
	for <lists+blinux-list@lfdr.de>; Sat, 31 Jul 2021 20:05:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1627754739;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=YUoU5Tf7/IlwAa49p/uBgXzeyvj5k2bzb1ZvMOStGPk=;
	b=B+GyT99pNRK/qsXfky4/KVXWis+S04RWKyRUxlwBObCvAdc/D6I/1mQcVkUgoQa1Z7sELE
	VOJfWyzkIfaSvbKGNqmfAusw1mtP8LK37F/uzaRChWmLIYcfNG+vwkmzQ2WCkRqL+4Hbdd
	c8uCLScxwU2EA/nFRpyI4GCpWyKNQAE=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-320-LesD8sIpM2y5hnsuSkXqLA-1; Sat, 31 Jul 2021 14:05:37 -0400
X-MC-Unique: LesD8sIpM2y5hnsuSkXqLA-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 5CB20C7401;
	Sat, 31 Jul 2021 18:05:33 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id E5EFFE2D4;
	Sat, 31 Jul 2021 18:05:29 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 62AA4180BAB0;
	Sat, 31 Jul 2021 18:05:26 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 16VI5ILI013141 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 31 Jul 2021 14:05:18 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id A0E52200B69C; Sat, 31 Jul 2021 18:05:18 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 9C780202B199
	for <blinux-list@redhat.com>; Sat, 31 Jul 2021 18:05:16 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 2E91A185A79C
	for <blinux-list@redhat.com>; Sat, 31 Jul 2021 18:05:16 +0000 (UTC)
Received: from mail-qk1-f178.google.com (mail-qk1-f178.google.com
	[209.85.222.178]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-172-G2ofTQaHNWSMKRa8w_NBVQ-1; Sat, 31 Jul 2021 14:05:13 -0400
X-MC-Unique: G2ofTQaHNWSMKRa8w_NBVQ-1
Received: by mail-qk1-f178.google.com with SMTP id k7so12702995qki.11
	for <blinux-list@redhat.com>; Sat, 31 Jul 2021 11:05:13 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=rLV8QJmWG/k+SNc+BJ9+ON4CsufTxhO2D/yiTcaV5e4=;
	b=eJTg5y4D3CvK3rVd0G3p7oupaEueJQjMLQQ1Bau04mQt8Ayj5SBGml59SsguU5+RGS
	z6C9oZJ4EIhdMY15Ii3eeU2tv2/vtNFCE21Jeq2Hz4p5Y+C5rN2rT+61as7Uo6RgjKMQ
	hcrRWH+bEOyhulfhd/LohAiTN4l1LVmYSfhNcHnRQ7/AoucIsgpvPtggwiHF7w9dHqEy
	Kr4H+XX2uvFv4P28AqDEsu4uKkfvnFfVCCxfPm5D28rdiSajnLVcNNc2+DGZhXwX1je6
	RcJAIAinU8XRC4F8cJ5v0XCs2COnNOF7utgMiTNw3iEh7lLdobTnpTl2RzMaKFTh877Z
	GZfw==
X-Gm-Message-State: AOAM531sBqgd5Ffke3XgAQcncHsfpBxWu3gFC7ObNzhSOR08fnWOeJjG
	paDm3QVmHqMm5vmuAqswJEzP4hvlF9m9VA==
X-Google-Smtp-Source: ABdhPJyDsas19dTg6cLtXw9oT+abVbN2RIo4eHnmukEFg1PW3+Ir7jQfpKGZDGMloZrRC0ul8gnztQ==
X-Received: by 2002:a05:620a:10a5:: with SMTP id
	h5mr8473630qkk.182.1627754712883; 
	Sat, 31 Jul 2021 11:05:12 -0700 (PDT)
Received: from thinkpad.example.slint ([2601:192:4c80:1420::adcc])
	by smtp.gmail.com with ESMTPSA id
	c18sm2252375qtb.61.2021.07.31.11.05.11 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Sat, 31 Jul 2021 11:05:12 -0700 (PDT)
Subject: Re: Solus and Broken Speech
To: blinux-list@redhat.com
References: <6fbf8e0f-bfb0-92ea-8b0b-7e271cb3a4a1@gmail.com>
	<alpine.NEB.2.23.451.2107302039530.29234@panix1.panix.com>
	<a329141f-64a6-e2a2-1c8e-b16e5d108cad@gmail.com>
	<c88d0cb6-3429-f482-6de3-2bd6262b9967@gmail.com>
	<977e443f-189c-849c-eb13-842d6b036500@gmail.com>
	<b8c423b9-0d48-8b71-26c9-ddcc752d80ad@gmail.com>
	<CAGz84JKRSyGytL6a5V+ZEvBaKkszhfNjJGeMzXw8a3=HS5HJbg@mail.gmail.com>
	<e05aa6fd-c296-33f8-94b5-5f42321a69b9@gmail.com>
Message-ID: <554b7418-ec44-b192-eabe-de4757ba717b@gmail.com>
Date: Sat, 31 Jul 2021 14:05:10 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
	Thunderbird/78.12.0
MIME-Version: 1.0
In-Reply-To: <e05aa6fd-c296-33f8-94b5-5f42321a69b9@gmail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.4
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

VGhpcyB0aW1lLCBJIHRyaWVkIHRoZSBCdWRnaWUgbGl2ZSB2ZXJzaW9uLCBhbmQgaGFkIHRoZSBz
YW1lIGNob3BwaW5lc3MgCmluIHRoZSBzcGVlY2guwqAgSXQgc2VlbWVkIHRvIGdvIGF3YXksIHdo
aWxlIEkgd2FzIHVzaW5nIHRoZSBzeXN0ZW0uwqAgClRoZXJlJ3Mgc29tZXRoaW5nIGFib3V0IHNw
ZWVjaCBkaXNwYXRjaGVyLCBTb2x1cywgYW5kIHRoaXMgbWFjaGluZSAKKFRoaW5rcGFkIDExRSwg
YnkgTGVub3ZvKS7CoCBJJ2xsIHNlZSB3aGF0IGhhcHBlbnMgb24gbXkgSFAgUHJvYm9vay7CoCAK
SSdsbCBwcm9iYWJseSBsZWF2ZSBTbGludCBoZXJlIG9uIHRoZSB0aGlua3BhZC4gSWYgSSBkbyBT
b2x1cywgb24gClByb2Jvb2ssIGl0IHdpbGwgcHJvYmFibHkgYmUgdGhlIE1hdGUgc3BpbjsgSSBw
cmVmZXIgaXQgb3ZlciBCdWRnaWUgYW5kIApHTk9NRS4KCgpUaGFuayB5b3UsCgoKCkRhdmXCoCBI
LgoKCklmIHlvdSB3YW50IHRvIHRha2UgdGhpcyBvZmYtbGlzdCzCoCB3cml0ZSBkaXJlY3RseTog
a2ExY2V5QGdtYWlsLmNvbQoKCgpTZW50IHdpdGggVGh1bmRlcmJpcmQgb24gU2xpbnQKCgoKT24g
Ny8zMS8yMSA1OjExIEFNLCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIHdyb3Rl
Ogo+IE9kZGx5IGVub3VnaCBJJ3ZlIG5vdCBub3RpY2VkIHRoZSBjaG9wcGluZXNzIHdpdGggdGhl
IEJ1ZGdpZSBkZXNrdG9wLCAKPiBzbyBJJ20gd29uZGVyaW5nIGlmIGl0J3Mgc29tZXRoaW5nIE1h
dGUgc3BpbiBzcGVjaWZpYyB3aXRoIGhvdyBTb2x1cyAKPiBkb2VzIHRoaW5ncyB0aG91Z2g/Cgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpCbGludXgtbGlz
dCBtYWlsaW5nIGxpc3QKQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQpodHRwczovL2xpc3RtYW4ucmVk
aGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0

