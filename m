Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 88F6A4BBFF6
	for <lists+blinux-list@lfdr.de>; Fri, 18 Feb 2022 19:53:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1645210433;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=HxGQq3YaVwwWagTvMMT0BPaumie6lR6DOqe1IZqSi50=;
	b=KNoPXS4HEzwkGP2BC9mEmOxbkWWGzF3qNtVrNUQeJKK39ZfL43KVS53jlMKU+/ZrBVDEYD
	igFAhVpSZslmrb4zpuDJn4gUxM3MS5WQoECUy+UzOFbWoQnoJHV6llABIV1rOyt26HOYtD
	dScceDGUTxkRfpcuZ1G+MQO2VzKNemM=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-56-hU3RB0xmNae0bXU8HFQ0tg-1; Fri, 18 Feb 2022 13:53:49 -0500
X-MC-Unique: hU3RB0xmNae0bXU8HFQ0tg-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 8D92C1800D50;
	Fri, 18 Feb 2022 18:53:45 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 8BFA678AA9;
	Fri, 18 Feb 2022 18:53:44 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 9DE481806D1D;
	Fri, 18 Feb 2022 18:53:41 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com
	[10.11.54.1])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 21IIqT3I030598 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 18 Feb 2022 13:52:29 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 2181E40FF694; Fri, 18 Feb 2022 18:52:29 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 1D67D40FF690
	for <blinux-list@redhat.com>; Fri, 18 Feb 2022 18:52:29 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 05B2D80088A
	for <blinux-list@redhat.com>; Fri, 18 Feb 2022 18:52:29 +0000 (UTC)
Received: from mail-pj1-f44.google.com (mail-pj1-f44.google.com
	[209.85.216.44]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-607-o91T0dAHN06onwzaPElEww-1; Fri, 18 Feb 2022 13:52:27 -0500
X-MC-Unique: o91T0dAHN06onwzaPElEww-1
Received: by mail-pj1-f44.google.com with SMTP id
	d9-20020a17090a498900b001b8bb1d00e7so9339943pjh.3
	for <blinux-list@redhat.com>; Fri, 18 Feb 2022 10:52:26 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:mime-version:subject:from:in-reply-to:date
	:content-transfer-encoding:message-id:references:to;
	bh=M4+GoaP3bQ0ySNnIrkk1Vf5H7uMuSKj1s3q5G8mL6Sk=;
	b=h55Qw9XQNolcA3yCgCwMpcr4tPPin7pA0WD0/79rRXgt07BfK9eWkgy4S69u+F/gpA
	3Ps40qio9SmZ6AqN0l1E01Jh1H3xtghyBf5G6Z53g1VgG3Yup81OUaLIR4jZI5a/gxe8
	dCuKxIoSu834ni73InCkrJ1O2wk2cxsVFqdeMA+U5U3/2eL/t8NiCVpqRAGQpzAduY+Q
	sAs88SkTWC8YxSHZg3g06HSVJ7201AURT8JlJtLnCXnA9zyhsGWtyK5IX4qbgWASkInL
	ehshQS/KNmfCaK4M/XYVFzqubPoV8YQZtqeOn+aZf1PJcboNJKUqjypbDQuM23h5NInB
	iloQ==
X-Gm-Message-State: AOAM53208tGgW2Q9i58AI/0n7sPwMBuVJyyeGj6xV44USEQeaKZSIqig
	nyrwmUUV9cavHuvKFgqcMyrsCnMaEV7YVg==
X-Google-Smtp-Source: ABdhPJzmowEKHpXIjK495/OJ9cViwCwZ+fmZkttuNvHWu6w0x7r1gzJ9f8KDU7++FBdGf6jsKIzn6Q==
X-Received: by 2002:a17:90b:1d8d:b0:1b8:2db4:892a with SMTP id
	pf13-20020a17090b1d8d00b001b82db4892amr14008257pjb.209.1645210345825;
	Fri, 18 Feb 2022 10:52:25 -0800 (PST)
Received: from [192.168.4.38] (24-113-81-134.wavecable.com. [24.113.81.134])
	by smtp.gmail.com with ESMTPSA id
	v9sm1392353pfu.134.2022.02.18.10.52.25
	(version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 18 Feb 2022 10:52:25 -0800 (PST)
Mime-Version: 1.0 (Mac OS X Mail 13.4 \(3608.120.23.2.7\))
Subject: Re: debuan getting web suppression
In-Reply-To: <a8d11184-d0f8-b1fa-91b8-1f30a5945e22@panix.com>
Date: Fri, 18 Feb 2022 10:52:22 -0800
Message-Id: <A69E83BA-20BC-462E-8C25-783CE9779C78@cfcl.com>
References: <a8d11184-d0f8-b1fa-91b8-1f30a5945e22@panix.com>
To: Linux for blind general discussion <blinux-list@redhat.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.1
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 21IIqT3I030598
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

PiBPbiBGZWIgMTgsIDIwMjIsIGF0IDAyOjE4LCBzb21lb25lICg/KSB3cm90ZToKPiAKPiBGb3Ig
bm93IGFuZCBJIGRvbid0IGtub3cgaG93IGZhciBiYWNrLCBkZWJ1YW4gaGFzIGJlZW4gZ2V0dGlu
ZyB3ZWIKPiBzdXBwcmVzc2lvbi4gIFRoaXMgY2FuIGJlIGNhbGxlZCB3ZWIgc3VwcHJlc3Npb24g
c2luY2UgcG9wdWxhcml0eSBpcyBub3QKPiB0aGUgb25seSB3YXkgdG8gaGF2ZSB0aGluZ3MgbW92
ZWQgdXAgaW4gd2ViIHJhbmtpbmdzLiAgVGhpcyBhbHNvIGhhcHBlbnMKPiBieSBtZWFucyBvZiBt
YW5pcHVsYXRpb24gb2Yga2V5d29yZHMgYW1vbmcgb3RoZXIgc3RyYXRlZ2llcy4gIEkgZG9uJ3Qg
a25vdwo+IGlmIGRlYnVhbiBnb3Qga2lsbGVkIG9mZiBieSB0aGUgcGFuZGVtaWMgaW4gYWRkaXRp
b24gdG8gd2ViIHN1cHByZXNzaW9uCj4gYnV0IHRoaXMgaXMgd2hhdCBoYXMgaGFwcGVuZWQuCgoa
RXJtLCBuby4uLiAgUHJvYmxlbXMgd2l0aCB0eXBvcyAoZGVidWFuIHZzLiBkZXZ1YW4pIGFzaWRl
LCBhc3N1bWluZyB0aGF0IGFsbCB0aGUgZm9sa3MgcnVubmluZyBzZWFyY2ggZW5naW5lcyBhcmUg
Y29uc3BpcmluZyB0byBtYWtlIGEgTGludXggZGlzdHJvIGhhcmQgdG8gZmluZCBzZWVtcyBhIGJp
dCBmYXIgZmV0Y2hlZCB0byBtZS4KCkV2ZW4gdGhpbmtpbmcgdGhhdCBHb29nbGUgaXMgcGxvdHRp
bmcgYWdhaW5zdCBkZXZ1YW4gaXMgYSBiaXQgaGFyZCB0byBpbWFnaW5lLiAgU28sIG91dCBvZiBj
dXJpb3NpdHksIEkgZGlkIGEgKHZlcnkgdGlueSkgZXhwZXJpbWVudC4gIFdoZW4gSSBwdXQgImRl
YnVhbiIgaW50byBhIEdvb2dsZSBzZWFyY2ggZmllbGQsIHRoZSBwYWdlIHRoYXQgcmV0dXJuZWQg
c2FpZDoKCj4gQWJvdXQgNDAsNDAwIHJlc3VsdHMgKDAuNjIgc2Vjb25kcykgCj4gRGlkIHlvdSBt
ZWFuOiBkZWJpYW4KPiAKPiBTZWFyY2ggUmVzdWx0cwo+IAo+IGRlYnVhbiB8IHN5c3RlbWQtZnJl
ZSBsaW51eCBjb21tdW5pdHkKPiBodHRwczovL3N5c2RmcmVlLndvcmRwcmVzcy5jb20g4oC6IHRh
ZyDigLogZGVidWFuCj4gUG9zdHMgYWJvdXQgZGVidWFuIHdyaXR0ZW4gYnkgc3lzZGZyZWUtZWRp
dG9yLgo+IC4uLgoKVGhlIGFib3ZlIGxpbmsgKGh0dHBzOi8vc3lzZGZyZWUud29yZHByZXNzLmNv
bS90YWcvZGVidWFuLykgd2VudCB0byBhIHBhZ2UgY29udGFpbmluZyBhIHZpdHJpb2xpYyBzY3Jl
ZWQgYWdhaW5zdCBEZWJpYW4uICBZZWVwcyEKCkhvd2V2ZXIsIHRoZSByZXN1bHRzIHBhZ2UgYWxz
byBjb250YWluZWQgdGhlIGZvbGxvd2luZyBpbnNldCBib3g6Cgo+IFNlZSByZXN1bHRzIGFib3V0
Cj4gCj4gRGViaWFuIEdOVS9MaW51eAo+IFNvZnR3YXJlCj4gCj4gRGV2dWFuCj4gT3BlcmF0aW5n
IHN5c3RlbQoKCkNsaWNraW5nIHRoZSBzZWNvbmQgb25lIGJyb3VnaHQgbWUgdG8gYSBzZWFyY2gg
cmVzdWx0cyBwYWdlIGZvciBEZXZ1YW46Cmh0dHBzOi8vd3d3Lmdvb2dsZS5jb20vc2VhcmNoP3E9
RGV2dWFuCgpTbywgbGV0J3MgYWxsIHRyeSB0byBkaWcgYSBiaXQgaGFyZGVyIGJlZm9yZSBjcmVh
dGluZyBhbmQgcHJvbXVsZ2F0aW5nIHlldCBhbm90aGVyIGNvbnNwaXJhY3kgdGhlb3J5LiAgVGhl
cmUncyBtb3JlIHRoYW4gZW5vdWdoIG9mIHRob3NlIGZsb2F0aW5nIGFyb3VuZCBhbHJlYWR5Li4u
CgotIFJpY2ggTW9yaW4KCgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkJsaW51eC1saXN0IG1haWxpbmcgbGlzdApCbGludXgtbGlzdEByZWRoYXQuY29t
Cmh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3Q=

