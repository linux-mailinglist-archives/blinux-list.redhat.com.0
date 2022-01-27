Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C5E149EEFB
	for <lists+blinux-list@lfdr.de>; Fri, 28 Jan 2022 00:45:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1643327105;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=uJY1E+aWAgTX8UNWqRFXyWgwXt2Li7FUH7ByqHQvd/0=;
	b=Vi7aMETxTFXw53ATcW7Fl8ZzNkJ9TPsYoT9EbsUuqnqVJdOK5vDDlPR0Z5z5SLmqDYQ1Mg
	OvWWNSsK99RvrwsTh02OwBspqdaTd1L7QDv+GgwZo2H9et0pnktuvyzNkRFeu0vuhcBGSj
	MSNv+KEOsdSOoZcFRMgEawbyuq8sOp4=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-330-p1ckR_g-PU2XM6o-j1MIiw-1; Thu, 27 Jan 2022 18:45:01 -0500
X-MC-Unique: p1ckR_g-PU2XM6o-j1MIiw-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 6864751083;
	Thu, 27 Jan 2022 23:44:56 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id D7C604E2D3;
	Thu, 27 Jan 2022 23:44:55 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id CEA0C4CA93;
	Thu, 27 Jan 2022 23:44:54 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 20RNiFti023567 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 27 Jan 2022 18:44:15 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 1DA61200A4ED; Thu, 27 Jan 2022 23:44:15 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 19A75200B66D
	for <blinux-list@redhat.com>; Thu, 27 Jan 2022 23:44:12 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id E3C11802A5E
	for <blinux-list@redhat.com>; Thu, 27 Jan 2022 23:44:11 +0000 (UTC)
Received: from darkstar.slint.fr (darkstar.slint.fr [172.105.89.79]) by
	relay.mimecast.com with ESMTP id us-mta-407--ufA3HcfO_GbPyg-QpHFAA-1;
	Thu, 27 Jan 2022 18:44:09 -0500
X-MC-Unique: -ufA3HcfO_GbPyg-QpHFAA-1
Received: from [192.168.1.37] (men75-h08-176-172-247-100.dsl.sta.abo.bbox.fr
	[176.172.247.100])
	by darkstar.slint.fr (Postfix) with ESMTPSA id 2F9032059C
	for <blinux-list@redhat.com>; Thu, 27 Jan 2022 23:44:02 +0100 (CET)
Message-ID: <f37c70b7-56fb-5104-f60a-636740db29cf@slint.fr>
Date: Fri, 28 Jan 2022 00:44:04 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
	Thunderbird/91.5.1
Subject: Re: Fedora-MATE_Compiz-Live-x86_64-35-1.2.iso
To: blinux-list@redhat.com
References: <2930A22F-EA6A-4939-A70A-6C92AF95E4CC@icloud.com>
In-Reply-To: <2930A22F-EA6A-4939-A70A-6C92AF95E4CC@icloud.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.4
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 20RNiFti023567
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGkgUm9iLAoKZGlkIHlvdSB0cnkgU2xpbnQ/Cmh0dHBzOi8vc2xpbnQuZnIvZG9jL0hhbmRCb29r
Lmh0bWwKCkNoZWVycywKRGlkaWVyCgpMZSAyOC8wMS8yMDIyIMOgIDAwOjIyLCBMaW51eCBmb3Ig
YmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIGEgw6ljcml0wqA6Cj4gRGVhciBMaXN0LAo+IFRoaXMg
aXMgbXkgdGhpcmQgYXR0ZW1wdCBhdCBGZWRvcmEuCj4gSSBzZXR1cCBhIFZNIG9uIG15IE1hYyB0
byB0cnkgCj4gRmVkb3JhLU1BVEVfQ29tcGl6LUxpdmUteDg2XzY0LTM1LTEuMi5pc28uCj4gSSBw
cmVzc2VkIGFsdCtGMiwgdHlwZWQgb3JjYSBhbmQgZW50ZXIuCj4gSSBnZXQgbm8gc3BlZWNoLgo+
IFdoYXQgY2FuIGJlIHdyb25nPwo+IFRoZSBzYW1lIHRoaW5nIGhhcHBlbmVkIHdpdGggRmVkb3Jh
IFdvcmtzdGF0aW9uIDM1Lgo+IEnigJltIGFib3V0IHRvIGdpdmUgdXAgYW5kIHN0aWNrIHdpdGgg
QWNjZXNzaWJsZSBDb2NvbnV0IGFuZCBMaW51eCBNaW50IDIwLjAzLgo+IFRoZXkgYm90aCB3b3Jr
IG91dCBvZiB0aGUgYm94IHdpdGggbm8gcHJvYmxlbXMuCj4gVGhhbmtzLAo+IFJvYgoKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkJsaW51eC1saXN0IG1h
aWxpbmcgbGlzdApCbGludXgtbGlzdEByZWRoYXQuY29tCmh0dHBzOi8vbGlzdG1hbi5yZWRoYXQu
Y29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3Q=

