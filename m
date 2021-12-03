Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 704D0467EFD
	for <lists+blinux-list@lfdr.de>; Fri,  3 Dec 2021 21:55:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1638564897;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=kCAh/GIY7ZmuYzHDoO6VLxW/LUP5iyG7I9XpkEcTS5Q=;
	b=SRGisZb2QxoVOc2xd3u+6YnUeISMCCtMwLL74c8pl+vH/wnF7XCulGi+do0Mxba4Aym9T2
	7tELfozZ0yJb4Dpv5lq2Fe4OuJbmNzDKC6JXLtiBF/TKvaIc5Dze7LHxAViR1xH1rycqZz
	qp0F5NcAvGO3SxiTOgk4P87gbx88KEw=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-126-LYfeX3RdOgy0t4NZ3vShFw-1; Fri, 03 Dec 2021 15:54:53 -0500
X-MC-Unique: LYfeX3RdOgy0t4NZ3vShFw-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id A47D618A0F1B;
	Fri,  3 Dec 2021 20:54:48 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 78D5A5DF21;
	Fri,  3 Dec 2021 20:54:42 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 602A24BB7B;
	Fri,  3 Dec 2021 20:54:25 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1B3KsEJs027891 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 3 Dec 2021 15:54:15 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id AA77B2026D4D; Fri,  3 Dec 2021 20:54:14 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id A5E542026D46
	for <blinux-list@redhat.com>; Fri,  3 Dec 2021 20:54:11 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 96B91805B0A
	for <blinux-list@redhat.com>; Fri,  3 Dec 2021 20:54:11 +0000 (UTC)
Received: from mail-il1-f171.google.com (mail-il1-f171.google.com
	[209.85.166.171]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-499-3p_h21KhMz6ovBAOpJzPEQ-1; Fri, 03 Dec 2021 15:54:10 -0500
X-MC-Unique: 3p_h21KhMz6ovBAOpJzPEQ-1
Received: by mail-il1-f171.google.com with SMTP id a11so3969726ilj.6
	for <blinux-list@redhat.com>; Fri, 03 Dec 2021 12:54:10 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:from:to:references:in-reply-to:subject:date
	:message-id:mime-version:content-transfer-encoding:content-language
	:thread-index;
	bh=vnq9eZXNestmdq4fZklIV8J/JSqEcyVlvqfnc7pCVIM=;
	b=rVMHsBwID3j8hVj+D4Q8uEKLSVoShoGs0kOOs3ZMhXl1D1IUHzGFTd/2ZRIup3g+bP
	PILz6wNrlpmBId99HFtPFbdOnwx5Yp4BEvYREEZHKs9liZhN/pvu2AMFrP53Yv6DhhOA
	krUAgS05eCrOJA2FuhzZ20p1yaYP+hewnsULV5vUDAIBr8LWQSHH5jqZ7YQfBOfowfED
	TndXcfUA0ly57FY3Emo8L5HlSGSRWb1/77c+Esdmo4oARsr8EgenT5ym2fnnuP6exSBX
	mTLbLcVM5bDKJX5RJRZ2naqLmihg94tKIHJNC0ejdynoToGELB8ydyxJv0tZl+HQXIyE
	rlKA==
X-Gm-Message-State: AOAM532mQ3zzdAQoGdj4diiNa268bJGiQ1nW7eR9ACmvLGaZn+L4PPLw
	9rlnaqAH9c/eNmUqJEGx3rsKiXC3sAhy6A==
X-Google-Smtp-Source: ABdhPJxnghARTvgDwNIWOIV91VOhfZp+PDYYEHSpZFIQmPkEmEZOmxpXjUOl3fY3cMNNvnejF75+RQ==
X-Received: by 2002:a05:6e02:1a4b:: with SMTP id
	u11mr19043090ilv.225.1638564849314; 
	Fri, 03 Dec 2021 12:54:09 -0800 (PST)
Received: from LAPTOP2SE9M48F ([2600:1702:20f0:4420:8863:8b3:664f:9f9f])
	by smtp.gmail.com with ESMTPSA id
	o14sm2121589ioo.36.2021.12.03.12.54.08 for <blinux-list@redhat.com>
	(version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 03 Dec 2021 12:54:08 -0800 (PST)
To: <blinux-list@redhat.com>
References: <8165B247-F098-4F16-8FFB-3F797D5153B0@icloud.com>
In-Reply-To: <8165B247-F098-4F16-8FFB-3F797D5153B0@icloud.com>
Subject: RE: Help booting live disk
Date: Fri, 3 Dec 2021 15:54:09 -0500
Message-ID: <023501d7e887$eb576040$c20620c0$@gmail.com>
MIME-Version: 1.0
Thread-Index: AQIepuGFrfV+btmnPaEei7PsUv5bRquTwV5g
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
	lists01.pubmisc.prod.ext.phx2.redhat.com id 1B3KsEJs027891
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-us
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGksIGEgcXVpY2sgZ29vZ2xlIHNlYXJjaCByZXZpZWxlZCB0aGF0IGYxMiB3aWxsIGRvIGl0LiAg
SnVzdCB0YXAgaXQgd2hpbGUgdGhlIG1hY2hpbmUgYm9vdHMgYW5kIHRoZW4geW91IGNhbiBkb3du
YXJyb3cgb25jZSBvciBob3dldmVyIG1hbnkgdGltZXMgaXQgdGFrZXMgdG8gZ2V0IHRvIHlvdXIg
dXNiIGRyaXZlLiAgT24gbXkgaHAgbWFjaGluZSBpdCBpcyBmOS4gIAoKTWF0dGhldwoKCi0tLS0t
T3JpZ2luYWwgTWVzc2FnZS0tLS0tCkZyb206IGJsaW51eC1saXN0LWJvdW5jZXNAcmVkaGF0LmNv
bSA8YmxpbnV4LWxpc3QtYm91bmNlc0ByZWRoYXQuY29tPiBPbiBCZWhhbGYgT2YgTGludXggZm9y
IGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbgpTZW50OiBUaHVyc2RheSwgRGVjZW1iZXIgMiwgMjAy
MSA1OjE5IFBNClRvOiBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIDxibGludXgt
bGlzdEByZWRoYXQuY29tPgpTdWJqZWN0OiBIZWxwIGJvb3RpbmcgbGl2ZSBkaXNrCgpIaSwKSSB3
YXMgc28gZXhjaXRlZCB0byByZWNlaXZlIG15IG5ldyBMYXB0b3AuCkJ1dCBJIGNhbuKAmXQgZ2V0
IGl0IHRvIGJvb3QgZnJvbSBVU0IsIG9yIGZyb20gdGhlIGV4dGVybmFsIFVTQiBEVkQgZHJpdmUu
Ckl0IGFsd2F5cyBib290IHRvIFdpbmRvd3MuCklzIHRoZXJlIGFueXRoaW5nIEkgY2FuIGRvLCBv
ciBkbyBJIG5lZWQgc2lnaHRlZCBoZWxwPwpIZXJlIGFyZSB0aGUgc3BlY3MuCkdhdGV3YXkgMTQu
MSIgVWx0cmEgU2xpbSBOb3RlYm9vaywgCkZIRCwgSW50ZWwgQ29yZSBpNS0xMTM1RzcsIFF1YWQg
Q29yZSwgCjE2R0IgUkFNLCA1MTJHQiBTU0QsIFR1bmVkIGJ5IFRIWCBBdWRpbywKIEZpbmdlcnBy
aW50IFNjYW5uZXIsIDEuME1QIFdlYmNhbSwgSERNSSwgQ29ydGFuYSwgV2luZG93cyAxMCBIb21l
IAoKVGhhbmtzLApSb2IKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQpo
dHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0CgoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQmxpbnV4LWxp
c3QgbWFpbGluZyBsaXN0CkJsaW51eC1saXN0QHJlZGhhdC5jb20KaHR0cHM6Ly9saXN0bWFuLnJl
ZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdA==

