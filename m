Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FD719BDAB
	for <lists+blinux-list@lfdr.de>; Sat, 24 Aug 2019 14:30:56 +0200 (CEST)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id 8925B81DE7;
	Sat, 24 Aug 2019 12:30:54 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id C911B5C28C;
	Sat, 24 Aug 2019 12:30:53 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id A3AA01802218;
	Sat, 24 Aug 2019 12:30:52 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
	[10.5.11.16])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id x7OCUmPi005166 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 24 Aug 2019 08:30:48 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 27C925C3F8; Sat, 24 Aug 2019 12:30:48 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx1.redhat.com (ext-mx23.extmail.prod.ext.phx2.redhat.com
	[10.5.110.64])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 22A2F5C28C
	for <blinux-list@redhat.com>; Sat, 24 Aug 2019 12:30:45 +0000 (UTC)
Received: from mail-yb1-f179.google.com (mail-yb1-f179.google.com
	[209.85.219.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id F277A1057867
	for <blinux-list@redhat.com>; Sat, 24 Aug 2019 12:30:44 +0000 (UTC)
Received: by mail-yb1-f179.google.com with SMTP id t5so5217910ybt.4
	for <blinux-list@redhat.com>; Sat, 24 Aug 2019 05:30:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:content-transfer-encoding:mime-version:date:subject:message-id
	:references:in-reply-to:to;
	bh=YEihpSg4BbtbDo6l7z6wFluasgmDZClwpjf0OxzlVLI=;
	b=RQb1beU1EtvXaH+8jh/ffMT2cfjPJiS4WIQnFzP29tyAEzpx7oOinM4Yih+DckNpKc
	G4L2hHEvwZMMLITjZPi8abZbJrxPBnrXEw10Rw6RdGusb0088M/OHAwIKU8inXjM5b8R
	UczKGTFW0AlR9SdlgYiEOAhmyFWd80M5RqKSaRhZLeahkvS9zc9MSD1a892YJseK+B9X
	GAECVge1JR9ui4wlLCJYQeY+FdXXfWMZmlHcdBM4lkqpgyG0efMKFy/hBxaAw7T3Tkmq
	IS9QjwYnrz7VawqQqtyxuGTBng/fJvFUthBwozTQdJu6C03Nw8wesqeS4TUdZeLdB+ax
	TpDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:content-transfer-encoding:mime-version:date
	:subject:message-id:references:in-reply-to:to;
	bh=YEihpSg4BbtbDo6l7z6wFluasgmDZClwpjf0OxzlVLI=;
	b=Z7ac7oEXwW4iVnRMRXgD5VAvAEmWC5LgY4eY+B3hCgxTTMaeX/7l6r4rCC8Jvfv7aX
	rBTyOS35339Kw8qGBH438NDuWuinevgPf9jS+AbIytXJNZKJfrdVQ7V2lfu8e0lXlUIP
	njR0lskqx8/ppvLFpG9yvBzJaPbxkYOa6xAW+yUQnwPLRc2Nrurlucbfkgzs6z0gp/na
	uWqdVrpcWuggFAtva+I1AjGRFjAaFzDOCuaMYH9vc4jir7jFtm+B3XjQtVkMoxN/mDbV
	YQxx4aD6JBXdKQ2R25s/y8f5kWWEBiYLknIHxieXW/Kb+riU2u62qdldCR6Cnqn49Yxm
	kHRA==
X-Gm-Message-State: APjAAAXq7q/uL3SADNFzktdyuMcA1zDgvth0vqdi8Nif1zXt+sxYyUyY
	A7feEPjPVRBx8EL1i6320I2WxW/v+iI=
X-Google-Smtp-Source: APXvYqzKc1FG+Y01Ph4gFmHakyjHKfmCIsa/ZhM+rxSrJcCE57l5Lf6GpEpsPbo4819MCMZJo5/eIw==
X-Received: by 2002:a25:168b:: with SMTP id 133mr6466732ybw.87.1566649844205; 
	Sat, 24 Aug 2019 05:30:44 -0700 (PDT)
Received: from [192.168.50.158] (184-090-011-149.res.spectrum.com.
	[184.90.11.149]) by smtp.gmail.com with ESMTPSA id
	n29sm1273489ywh.77.2019.08.24.05.30.43 for <blinux-list@redhat.com>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sat, 24 Aug 2019 05:30:43 -0700 (PDT)
Mime-Version: 1.0 (1.0)
Date: Sat, 24 Aug 2019 08:30:43 -0400
Subject: Re: KVM questions
Message-Id: <5B0D0197-4C16-4988-8F04-1B2A2FC96A88@gmail.com>
References: <38bbc7e3-6658-9fba-5466-c90bf4a396ff@GMAIL.COM>
In-Reply-To: <38bbc7e3-6658-9fba-5466-c90bf4a396ff@GMAIL.COM>
To: blinux-list@redhat.com
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.6.2
	(mx1.redhat.com [10.5.110.64]);
	Sat, 24 Aug 2019 12:30:45 +0000 (UTC)
X-Greylist: inspected by milter-greylist-4.6.2 (mx1.redhat.com [10.5.110.64]);
	Sat, 24 Aug 2019 12:30:45 +0000 (UTC) for IP:'209.85.219.179'
	DOMAIN:'mail-yb1-f179.google.com'
	HELO:'mail-yb1-f179.google.com' FROM:'rmann0581@gmail.com' RCPT:''
X-RedHat-Spam-Score: 0.151  (DKIM_SIGNED, DKIM_VALID, DKIM_VALID_AU,
	FREEMAIL_ENVFROM_END_DIGIT, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	SPF_HELO_NONE,
	SPF_PASS) 209.85.219.179 mail-yb1-f179.google.com 209.85.219.179
	mail-yb1-f179.google.com <rmann0581@gmail.com>
X-Scanned-By: MIMEDefang 2.84 on 10.5.110.64
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id x7OCUmPi005166
X-loop: blinux-list@redhat.com
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.12
Precedence: junk
Reply-To: blinux-list@redhat.com
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://www.redhat.com/mailman/options/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <https://www.redhat.com/archives/blinux-list>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://www.redhat.com/mailman/listinfo/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=subscribe>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.25]); Sat, 24 Aug 2019 12:30:54 +0000 (UTC)

SSBrbm93IHRoYXQgd2hlbiB5b3UgY3JlYXRlIGEgZmlsZSwgaXQgaXMgdXN1YWxseSBub3QgZXhl
Y3V0YWJsZSBieSBkZWZhdWx0LiAgVGhhdCBpcyBwcm9iYWJseSB3aHkgeW91IGdldCBwZXJtaXNz
aW9uIGRlbmllZC4gIFlvdSBjYW4gZG8gc29tZXRoaW5nIGxpa2UgY2htb2QgNzU1IHFlbXUuc2gu
ICBJIGRvbuKAmXQga25vdyBhYm91dCB0aGUgb3RoZXIgdHdvIGlzc3Vlcy4KCgpTZW50IGZyb20g
bXkgaVBob25lCgo+IE9uIEF1ZyAyNCwgMjAxOSwgYXQgNzo1MyBBTSwgTGludXggZm9yIGJsaW5k
IGdlbmVyYWwgZGlzY3Vzc2lvbiA8YmxpbnV4LWxpc3RAcmVkaGF0LmNvbT4gd3JvdGU6Cj4gCj4g
T2theSBJIGdvdCBhIGJ1bmNoIG9mIHFlbXUvS1ZNIHF1ZXN0aW9ucy4uLi4KPiAKPiBJIGZvbGxv
d2VkIERpZGVyJ3MgZ3VpZGUsIGl0IHdvcmtlZCB1cCB1bnRpbCBJIHdlbnQgdG8gcnVuIHRoZSBz
Y3JpcHQuIElzIGl0IG5vcm1hbCBJIGhhdmUgcGVybWlzc2lvbiBkZW5pZWQgZXJyb3JzIGZvciAu
L3FlbXUuc2g/Cj4gCj4gQWxzbywgYW55IHJlYXNvbiB3aHkgaXQgYWN0aXZhdGUgbXkgbWljcm9w
aG9uZSBpbnB1dCBhdXRvbWF0aWNhbGx5Pwo+IAo+IExhc3RseSwgaXQncyB0aHJvd2luZyBvdXQg
R1RLIGlzIGRpc2FibGVkIGVycm9ycy4gSSAvdGhvdWdodC8gdGhhdCBnb3QgZml4ZWQsIHlhPwo+
IAo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gQmxp
bnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+IGh0dHBzOi8v
d3d3LnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQmxpbnV4LWxpc3QgbWFpbGluZyBs
aXN0CkJsaW51eC1saXN0QHJlZGhhdC5jb20KaHR0cHM6Ly93d3cucmVkaGF0LmNvbS9tYWlsbWFu
L2xpc3RpbmZvL2JsaW51eC1saXN0
