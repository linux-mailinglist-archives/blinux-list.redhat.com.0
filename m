Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B45262D1B
	for <lists+blinux-list@lfdr.de>; Tue,  9 Jul 2019 02:40:05 +0200 (CEST)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id A42562F8BE7;
	Tue,  9 Jul 2019 00:40:01 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 1FEE95C643;
	Tue,  9 Jul 2019 00:40:01 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 1834618005C7;
	Tue,  9 Jul 2019 00:39:53 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
	[10.5.11.11])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id x690de2C018284 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 8 Jul 2019 20:39:40 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id E66B253E10; Tue,  9 Jul 2019 00:39:40 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx1.redhat.com (ext-mx15.extmail.prod.ext.phx2.redhat.com
	[10.5.110.44])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id E21FD512FD
	for <blinux-list@redhat.com>; Tue,  9 Jul 2019 00:39:38 +0000 (UTC)
Received: from mail-pg1-f176.google.com (mail-pg1-f176.google.com
	[209.85.215.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id D4C29308330C
	for <blinux-list@redhat.com>; Tue,  9 Jul 2019 00:39:29 +0000 (UTC)
Received: by mail-pg1-f176.google.com with SMTP id i8so8486398pgm.13
	for <blinux-list@redhat.com>; Mon, 08 Jul 2019 17:39:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:content-transfer-encoding:mime-version:date:subject:message-id
	:references:in-reply-to:to;
	bh=gU1ZV1NCjNHzyKKXvv9ODbuT291U2CxvIEumdANW2h8=;
	b=nvINbG7F2yr5HOVk2LQQmHQyoaPkyWv1Vx/8yEhOnAFJPAOEiNJ7K7LS6wzhWSp75G
	tgmruI9/lKKQLK4uXHsLvLcz4vdtpymSwYcnfuyaxZhzliHG1KifPNxXbuly4pSoKDAm
	gMwFPAe58o73q6ZAscml1XGkRt2FKaf/zUc9QTIk0QgSdIpraErN602+1qCzZ1RsIYR0
	CyKGsEI/TX8lTfyJOlklrqceR/BpAdLWaErZ1IjnYCdnakmln4+DRGDB2c4anXig9Q0v
	SiuDLNcXLXqQZma+dcw0TsXnHqYMCWsR3Gyz9OzwwmaRk3+wvVAWlTNfBE+Rf/mlMWkb
	4pQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:content-transfer-encoding:mime-version:date
	:subject:message-id:references:in-reply-to:to;
	bh=gU1ZV1NCjNHzyKKXvv9ODbuT291U2CxvIEumdANW2h8=;
	b=EUDuI9VriDhfVmPy1ZuR0GJzCXPBrihILgkKhHQ3X7tww1FHzXNnsBEKdosOZYDVqO
	mb5YflDumgplDZVgRW+fRdFYJlsLf0I0MxNjNhqPwFhZgX9NKkse+YFaJFFGSIHgvFCs
	3MwZOVyGkswInQebkwh24XuJE4IN0JuA8wWAb57ho+u1CTWesdlO894OBLMxocj0f3Cv
	3JeLVPGfjV6b8AajTM54eaNZSvgLyOy3QqljLbhqfd94e/KmL7E/xVreHrNyQAqTrRo6
	ddAcCyd1hfMH1E7fq457NL/11bbaUbq+rcpJN9kPxBE14N2wSnkJ3y7nOocr4NVpyAAO
	VGcg==
X-Gm-Message-State: APjAAAVh1EPV6dpDcrdNZTDu2pNc0mzB7JOVlGlNWMf92gdPLaC1V/eK
	7U/vDR5fK72cQbRUnFt4kn1GGbhQ
X-Google-Smtp-Source: APXvYqyCrcm5V4sfs9Y5KjLdGLFHJGT4veFAcFXMNeCzNsFzqj9wjW0RdiVU/f9NmtBydXvVGje/5g==
X-Received: by 2002:a63:dc56:: with SMTP id f22mr27343426pgj.305.1562632768878;
	Mon, 08 Jul 2019 17:39:28 -0700 (PDT)
Received: from [192.168.0.4] (72-160-120-189.dyn.centurytel.net.
	[72.160.120.189])
	by smtp.gmail.com with ESMTPSA id c9sm18574229pfn.3.2019.07.08.17.39.27
	for <blinux-list@redhat.com>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 08 Jul 2019 17:39:28 -0700 (PDT)
Mime-Version: 1.0 (1.0)
Date: Mon, 8 Jul 2019 17:39:27 -0700
Subject: Re: humanware braillant 40
Message-Id: <A8468674-D33F-4ACA-8B95-D4C59EC7D49A@gmail.com>
References: <CAJKfDDF5PMXY6S6_r8zAAq3FmA-eGW2+o3B1xhKqZBKt=XmoLw@mail.gmail.com>
In-Reply-To: <CAJKfDDF5PMXY6S6_r8zAAq3FmA-eGW2+o3B1xhKqZBKt=XmoLw@mail.gmail.com>
To: blinux-list@redhat.com
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
	(mx1.redhat.com [10.5.110.44]);
	Tue, 09 Jul 2019 00:39:29 +0000 (UTC)
X-Greylist: inspected by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.44]);
	Tue, 09 Jul 2019 00:39:29 +0000 (UTC) for IP:'209.85.215.176'
	DOMAIN:'mail-pg1-f176.google.com'
	HELO:'mail-pg1-f176.google.com' FROM:'kd7cyu@gmail.com' RCPT:''
X-RedHat-Spam-Score: 1.228 * (DKIM_SIGNED, DKIM_VALID, DKIM_VALID_AU,
	FREEMAIL_FROM, PDS_NO_HELO_DNS, RCVD_IN_DNSWL_NONE,
	SPF_HELO_NONE,
	SPF_PASS) 209.85.215.176 mail-pg1-f176.google.com 209.85.215.176
	mail-pg1-f176.google.com <kd7cyu@gmail.com>
X-Scanned-By: MIMEDefang 2.84 on 10.5.110.44
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id x690de2C018284
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
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.38]); Tue, 09 Jul 2019 00:40:04 +0000 (UTC)

TW9yZSBpbmZvIG91Z2h0IGJlIGhlbHBmdWwuICBJIGFtIHVzaW5nIGEgQnJhaWxsaWFudCBCSSA0
MCB3aXRoIFVidW50dSAxOC4wNCBCcmx0dHkgNS41IHdpdGggbm8gaXNzdWVzLgoKVG9tCgoKU2Vu
dCBmcm9tIG15IGlQaG9uZQoKPiBPbiBKdWwgOCwgMjAxOSwgYXQgMTc6MjksIExpbnV4IGZvciBi
bGluZCBnZW5lcmFsIGRpc2N1c3Npb24gPGJsaW51eC1saXN0QHJlZGhhdC5jb20+IHdyb3RlOgo+
IAo+IEhlbGxvLAo+IAo+IGNhbid0IGdldCBpdCB0byB3b3JrIHdpdGggQnJsVFRZLCBhbnkgaWRl
YSA/Cj4gCj4gLS0gCj4gTWljaGHDq2wgQ2Fyb24gQ291dHVyaWVyCj4gCj4gX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBCbGludXgtbGlzdCBtYWlsaW5n
IGxpc3QKPiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4gaHR0cHM6Ly93d3cucmVkaGF0LmNvbS9t
YWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKQmxpbnV4LWxpc3RA
cmVkaGF0LmNvbQpodHRwczovL3d3dy5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4
LWxpc3Q=
