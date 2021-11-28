Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 71014460939
	for <lists+blinux-list@lfdr.de>; Sun, 28 Nov 2021 20:10:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1638126632;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=sfFXRIe+0TdipUNrCPh+hQeoN96FjhV3n79zRKORLns=;
	b=JMCzAs6MRtryuJGYgAet/iNNZPN2qxOdvoQHH7599n7zQfqtIZk9pXAArhiQtxyJJ/axv8
	iSVfQO2mnFCPk40qntqUSS4ZPZAbvk8+FubCKLx+NWTS5LYtD+Bi/2Zmk+S/0VU+GeXBqR
	fsEvTZBb/7PY0fsuSq9B/ehJ2YFxu5Y=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-51-ioEL8EmlNV29cy8nHmvVEA-1; Sun, 28 Nov 2021 14:10:29 -0500
X-MC-Unique: ioEL8EmlNV29cy8nHmvVEA-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 8A1A81F598;
	Sun, 28 Nov 2021 19:10:25 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 09ECC7621D;
	Sun, 28 Nov 2021 19:10:25 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 19B374BB7C;
	Sun, 28 Nov 2021 19:10:21 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1ASJAHw8014611 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 28 Nov 2021 14:10:17 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id EA2C41121319; Sun, 28 Nov 2021 19:10:16 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id E60241121315
	for <blinux-list@redhat.com>; Sun, 28 Nov 2021 19:10:14 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 1DD5A805C2F
	for <blinux-list@redhat.com>; Sun, 28 Nov 2021 19:10:14 +0000 (UTC)
Received: from darkstar.slint.fr (darkstar.slint.fr [172.105.89.79]) by
	relay.mimecast.com with ESMTP id us-mta-384-_tXrqaJNM5KQD9HJcuMgOw-1;
	Sun, 28 Nov 2021 14:10:12 -0500
X-MC-Unique: _tXrqaJNM5KQD9HJcuMgOw-1
Received: from [192.168.1.37] (men75-h08-176-172-247-100.dsl.sta.abo.bbox.fr
	[176.172.247.100])
	by darkstar.slint.fr (Postfix) with ESMTPSA id BEAB1A3EB9
	for <blinux-list@redhat.com>; Sun, 28 Nov 2021 18:09:29 +0100 (CET)
Message-ID: <fda47b2b-0bad-b566-b60d-942b64720311@slint.fr>
Date: Sun, 28 Nov 2021 20:10:10 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
	Thunderbird/91.3.1
Subject: Re: WEBM, is it the default option of yt-dlp downloads?
To: blinux-list@redhat.com
References: <8e070d49-f0ee-f2b8-9086-c38fbd232003@gmail.com>
In-Reply-To: <8e070d49-f0ee-f2b8-9086-c38fbd232003@gmail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 1ASJAHw8014611
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

SGVsbG8gSWJyYWhpbSwKCnRoaXMgcGFnZSBjYW4gaGVscDoKaHR0cHM6Ly9kb2NzLnl0LWRscC5v
cmcvZW4vbGF0ZXN0L1JFQURNRS5odG1sI2Zvcm1hdC1zZWxlY3Rpb24KCkhvd2V2ZXIsIG1heWJl
IHBpcGUtdmlld2VyOgpodHRwczovL2dpdGh1Yi5jb20vdHJpemVuL3BpcGUtdmlld2VyCmNhbiBi
ZSB1c2VkIGFzIGFuIGludGVyZmFjZSB0byB5dC1kbHAuCgpJIHBsYW4gdG8gcGFja2FnZSBpdCBp
biB0aGUgY29taW5nIGRheXMuCkNoZWVycywKRGlkaWVyCgpMZSAyOC8xMS8yMDIxIMOgIDE5OjQy
LCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIGEgw6ljcml0wqA6Cj4gSGVsbG8g
ZnJpZW5kcywKPiAKPiBJIG5vdGljZWQgdGhhdCBhbGwgb2YgbXkgZG93bmxvYWRzIGZyb20geW91
dHViZSBhbmQgZmFjZWJvb2sgdXNpbmcgCj4geXQtZGxwIGNvbWUgaW4gYSBXRUJNIGZvcm1hdC7C
oCBJcyBXRUJNIHRoZSBkZWZhdWx0IG9wdGlvbiBvZiB5dC1kbHAgb3IgCj4gaXMgaXQgdGhlIG9u
bHkgb3B0aW9uPwo+IAo+IEhvdyBjYW4gSSBjaGFuZ2UgdGhlIHNldHRpbmcgdG8gbWFrZSBzdXJl
IHRoYXQgbXkgZG93bmxvYWRzIG1haW50YWluIAo+IHRoZWlyIG9yaWdpbmFsIGZvcm1hdHMgd2l0
aG91dCBjaGFuZ2VzLiBJIHdhbnQgbXkgZG93bmxvYWRzIHRvIGJlIG1wMyBpZiAKPiB0aGUgb3Jp
Z2luYWwgaXMgbXAzLCBvciBtcDQgaWYgdGhlIG9yaWdpbmFsIGlzIG1wNC4uLmV0Yy4gSXMgdGhp
cyBwb3NzaWJsZT8KPiAKPiBDaGVlcnMsCj4gCj4gSWJyYWhpbQoKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkJsaW51eC1saXN0IG1haWxpbmcgbGlzdApC
bGludXgtbGlzdEByZWRoYXQuY29tCmh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4v
bGlzdGluZm8vYmxpbnV4LWxpc3Q=

