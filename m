Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 60BB94A0250
	for <lists+blinux-list@lfdr.de>; Fri, 28 Jan 2022 21:52:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1643403157;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=BIDyaK2JKagdfROcGW3skR3mSqZfUTeqTYPRfRiudWs=;
	b=ZJl1H0j8yxENoSGeApiasg0TKhs/zLw2LRrBcSFAItz31K5RtaTwp8ga/zQQYFyczy/PNJ
	6wqCKpXB33R3w4AdQNE1wSITrag3Ht3y+Dc9iwP+Yca6vx6jJsSUx0uSnt62rTm94bbrhK
	b2GMYK/2xiVYgXjjGrEkEepgDQRUFiY=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-31-bpmdeOLRMH6CNA7Ukoxcmw-1; Fri, 28 Jan 2022 15:52:29 -0500
X-MC-Unique: bpmdeOLRMH6CNA7Ukoxcmw-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id CF2E1185302E;
	Fri, 28 Jan 2022 20:52:24 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 0AEBC12E38;
	Fri, 28 Jan 2022 20:52:22 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 588274BB7C;
	Fri, 28 Jan 2022 20:52:16 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 20SKq9aX014875 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 28 Jan 2022 15:52:09 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 624282166BCC; Fri, 28 Jan 2022 20:52:09 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 5E63E2166BB1
	for <blinux-list@redhat.com>; Fri, 28 Jan 2022 20:52:05 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id BD45C811E81
	for <blinux-list@redhat.com>; Fri, 28 Jan 2022 20:52:05 +0000 (UTC)
Received: from mail-qt1-f180.google.com (mail-qt1-f180.google.com
	[209.85.160.180]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-596-VoGt4bs7OH2V_OuPQz9iQQ-1; Fri, 28 Jan 2022 15:52:04 -0500
X-MC-Unique: VoGt4bs7OH2V_OuPQz9iQQ-1
Received: by mail-qt1-f180.google.com with SMTP id h8so227236qtk.13
	for <blinux-list@redhat.com>; Fri, 28 Jan 2022 12:52:03 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:from:to:references:in-reply-to:subject:date
	:message-id:mime-version:content-transfer-encoding:thread-index
	:content-language;
	bh=1uvmJn9HxxikeuH3EhQfloGNkGPwfxQNG8+xx7xvvZo=;
	b=Ri6EFWb2AqDW49Y78dCZ5W8P1TAE1BY50QGYQrjy01szmORKxbeqW9rDQGAqXqWvAa
	az36HcKLn4sdAY+mgkR9N2CcHou3SdqXJuDQtsF3/q0BHf8bHaWjHE4ctSTQSC3PD0rY
	CbwWO9OkZKbuT51mIzAhSSWy/OVmZ4GFGtPzITj1f7kYeg+Maq+syu+N5Na2hesAGzK5
	Dl4/RPcMr7J+OnQutHVCbMtoxJ6HKug970KZOqN8OQquJYV9r/7gZNBWlyzrfeoLvuoC
	GaWvKlH1sPcplWxpxTe8W8VY3PuzXFFAP2XaU3ctcMW+4gLcfWg64Ogd4uFs+LWi1ga+
	/A1g==
X-Gm-Message-State: AOAM531LzqyNBEerziAvPgNV4SbrvKPIEATo0qBcaQWXuS1a33ARZcNZ
	VrmBohq1f7XwVOtIIbjouDplGne7qfELzg==
X-Google-Smtp-Source: ABdhPJw/RsLgimIlxrafZzTjWCi94LZOW6IQkieE1WJzQ44/CtVT4bawDuZosODmnosDLtcCzUTxkw==
X-Received: by 2002:a05:622a:648:: with SMTP id
	a8mr7526754qtb.347.1643403123242; 
	Fri, 28 Jan 2022 12:52:03 -0800 (PST)
Received: from ElBraille
	(2603-6011-ba01-8300-5c1e-5cb6-2526-3f45.res6.spectrum.com.
	[2603:6011:ba01:8300:5c1e:5cb6:2526:3f45])
	by smtp.gmail.com with ESMTPSA id
	o19sm3588709qta.40.2022.01.28.12.52.02 for <blinux-list@redhat.com>
	(version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 28 Jan 2022 12:52:03 -0800 (PST)
To: <blinux-list@redhat.com>
References: <2930A22F-EA6A-4939-A70A-6C92AF95E4CC@icloud.com>
	<f37c70b7-56fb-5104-f60a-636740db29cf@slint.fr>
In-Reply-To: <f37c70b7-56fb-5104-f60a-636740db29cf@slint.fr>
Subject: RE: Fedora-MATE_Compiz-Live-x86_64-35-1.2.iso
Date: Fri, 28 Jan 2022 15:52:02 -0500
Message-ID: <03b301d81488$e6e7d350$b4b779f0$@gmail.com>
MIME-Version: 1.0
Thread-index: AQJ97epC6VTyPOqA8AIWdEGIcJlUHAHANjOyqx8zYHA=
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 20SKq9aX014875
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-us
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGksCgpJIG5ldmVyIGdvdCBGZWRvcmEgMzUgdG8gd29yayBpbiBhIHZtIGZvciBzb21lIHJlYXNv
bi4gIEkgaGF2ZSB0cmllZCBzb2x1eCB3aXRoIHRoZSBzYW1lIHJlc2F1bHQuICBTbGludCBhbmQg
YXJjaCB3b3JrIHdpdGggbm8gcHJvYmxlbS4gIEkgYW0gd29uZGVyaW5nIGlmIHRoZXJlIGlzIHNv
bWV0aHRoaW5nIGdvaW5nIG9uIGJldHdlZW4gTGludXggYW5kIG1hYyBvcy4gIEFueSB3YXkgSSdt
IG91dCBvZiBpZGVhcyBhcyBvZiBub3cuCgpNYXR0aGV3CgoKLS0tLS1PcmlnaW5hbCBNZXNzYWdl
LS0tLS0KRnJvbTogYmxpbnV4LWxpc3QtYm91bmNlc0ByZWRoYXQuY29tIDxibGludXgtbGlzdC1i
b3VuY2VzQHJlZGhhdC5jb20+IE9uIEJlaGFsZiBPZiBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBk
aXNjdXNzaW9uClNlbnQ6IFRodXJzZGF5LCBKYW51YXJ5IDI3LCAyMDIyIDY6NDQgUE0KVG86IGJs
aW51eC1saXN0QHJlZGhhdC5jb20KU3ViamVjdDogUmU6IEZlZG9yYS1NQVRFX0NvbXBpei1MaXZl
LXg4Nl82NC0zNS0xLjIuaXNvCgpIaSBSb2IsCgpkaWQgeW91IHRyeSBTbGludD8KaHR0cHM6Ly9z
bGludC5mci9kb2MvSGFuZEJvb2suaHRtbAoKQ2hlZXJzLApEaWRpZXIKCkxlIDI4LzAxLzIwMjIg
w6AgMDA6MjIsIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gYSDDqWNyaXQgOgo+
IERlYXIgTGlzdCwKPiBUaGlzIGlzIG15IHRoaXJkIGF0dGVtcHQgYXQgRmVkb3JhLgo+IEkgc2V0
dXAgYSBWTSBvbiBteSBNYWMgdG8gdHJ5IAo+IEZlZG9yYS1NQVRFX0NvbXBpei1MaXZlLXg4Nl82
NC0zNS0xLjIuaXNvLgo+IEkgcHJlc3NlZCBhbHQrRjIsIHR5cGVkIG9yY2EgYW5kIGVudGVyLgo+
IEkgZ2V0IG5vIHNwZWVjaC4KPiBXaGF0IGNhbiBiZSB3cm9uZz8KPiBUaGUgc2FtZSB0aGluZyBo
YXBwZW5lZCB3aXRoIEZlZG9yYSBXb3Jrc3RhdGlvbiAzNS4KPiBJ4oCZbSBhYm91dCB0byBnaXZl
IHVwIGFuZCBzdGljayB3aXRoIEFjY2Vzc2libGUgQ29jb251dCBhbmQgTGludXggTWludCAyMC4w
My4KPiBUaGV5IGJvdGggd29yayBvdXQgb2YgdGhlIGJveCB3aXRoIG5vIHByb2JsZW1zLgo+IFRo
YW5rcywKPiBSb2IKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQpodHRw
czovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0CgoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQmxpbnV4LWxpc3Qg
bWFpbGluZyBsaXN0CkJsaW51eC1saXN0QHJlZGhhdC5jb20KaHR0cHM6Ly9saXN0bWFuLnJlZGhh
dC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdA==

