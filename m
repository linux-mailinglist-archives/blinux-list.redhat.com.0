Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id A1A8C441001
	for <lists+blinux-list@lfdr.de>; Sun, 31 Oct 2021 19:08:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1635703696;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=lEmo3+6uK+UxZBACvYcHhobAcQdxsj3riuBlG/aD0qU=;
	b=FVjtaXiuKYXh4r6txX/nOro0y89EZOtNlZXX98lRlsIK6GKZCuM5Olr1drjczpQdFLf0jq
	paWurX0PfxY2SeF2WJmCEf0RznwPoBLLPxJxpyTBBGTNJ/Q/tYown3OxaCiToljMEHkcAQ
	1wvWP90il0HbkjVptgdeZYndGLnwfF0=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-224-y6u7V_84Mh-pTJR6M0-axw-1; Sun, 31 Oct 2021 14:08:13 -0400
X-MC-Unique: y6u7V_84Mh-pTJR6M0-axw-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 426A580668A;
	Sun, 31 Oct 2021 18:08:09 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id DC1195C1C5;
	Sun, 31 Oct 2021 18:08:04 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id D70024A702;
	Sun, 31 Oct 2021 18:08:02 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com
	[10.11.54.1])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 19VI7uDS018767 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 31 Oct 2021 14:07:57 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id CD2F540CFD10; Sun, 31 Oct 2021 18:07:56 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id C743540CFD0F
	for <blinux-list@redhat.com>; Sun, 31 Oct 2021 18:07:56 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id AC89B1875068
	for <blinux-list@redhat.com>; Sun, 31 Oct 2021 18:07:56 +0000 (UTC)
Received: from mail-io1-f50.google.com (mail-io1-f50.google.com
	[209.85.166.50]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-573-gjdUbEyuPSiMyk_-3K0qpQ-1; Sun, 31 Oct 2021 14:07:54 -0400
X-MC-Unique: gjdUbEyuPSiMyk_-3K0qpQ-1
Received: by mail-io1-f50.google.com with SMTP id b203so3720400iof.1
	for <blinux-list@redhat.com>; Sun, 31 Oct 2021 11:07:54 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:reply-to:subject:to:references:from:message-id
	:date:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=2uNlJt3KPyzXWcXu1Fh3JTOG0OUcFrEkE2JkFaY996A=;
	b=nerRilMulTBLARzbbi+XVOzCO+8N5jGbtkTzO8ik3f8Zr5C3Y8i0inmwPkm1ExFH6q
	sSoaSBbl2Gk/Oye5Y4+/RHNW73UB6qHQ4sffGRvD3zpsnHbor3+7L5XfJhErefr/Vag4
	1F6mWaBysldm73mf5C0eFnBqH4fopRkjo9KxUzSmzF6cJMh0gW5egenyYHVipjpdq91X
	ANDlNhSep7yd4zsBaTILZwD0F/byZ3x3uk1r+dooybSwwW+tVPsypLbh/1a2qdxVn4A5
	UhHFcyxayL9+W2R6cDKYWETPixNI5EdMPl7VFT7fhqwIn9USvzvuOMQTuZhawll43Ie+
	rwAA==
X-Gm-Message-State: AOAM530O9gOgJFMMV87QMomFzaLi3hcYlKLFlQR9+Dv1IK+QnOcqOezI
	b6Ktp3jMUfcR/a3HEPht/bkMzmAk5AM=
X-Google-Smtp-Source: ABdhPJxW5I0jWkD2wEOy8HStIZRkdcFFtRbUCHn5qM2jnRin66uZralxwWAzMBXrQRXOczAooScqGQ==
X-Received: by 2002:a05:6638:4106:: with SMTP id
	ay6mr18009967jab.120.1635703673944; 
	Sun, 31 Oct 2021 11:07:53 -0700 (PDT)
Received: from ?IPv6:2600:1700:9434:2a00:fd6b:82ee:ab7b:8e45?
	([2600:1700:9434:2a00:fd6b:82ee:ab7b:8e45])
	by smtp.gmail.com with ESMTPSA id
	e10sm6295074ili.53.2021.10.31.11.07.53 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Sun, 31 Oct 2021 11:07:53 -0700 (PDT)
Subject: Re: Beginner's Guide To The Linux Terminal
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <E5949DF0-363D-4D79-9E4A-5CB468223B5C@icloud.com>
	<Pine.LNX.4.64.2110311235300.25914@server2.shellworld.net>
	<alpine.NEB.2.23.451.2110311320060.1691@panix1.panix.com>
Message-ID: <afb0e612-5d09-f358-78b7-f4a455678088@gmail.com>
Date: Sun, 31 Oct 2021 13:07:51 -0500
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
	Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <alpine.NEB.2.23.451.2110311320060.1691@panix1.panix.com>
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

VG9vayBhIGxvb2sgYXQKCmxkcC5vcmcKCiDCoCBhbmQgaXQgc3VyZSBsb29rcyBsaWtlIEknbSBn
b25uYSBsZWFybiBsb3RzIGZyb20gdGhlcmUuCgpIb3dhcmQKT24gMTAvMzEvMjAyMSAxMjoyMSBQ
TSwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiB3cm90ZToKPiBJIGZpZ3VyZSBs
ZHAub3JnIGlzIG9uZSBnb29kIGV4dGVybmFsIHJlc291cmNlIHRob3VnaCB5b3VyIG1pbGVhZ2Ug
d2lsbAo+IHZhcnkuCj4KPgo+IE9uIFN1biwgMzEgT2N0IDIwMjEsIExpbnV4IGZvciBibGluZCBn
ZW5lcmFsIGRpc2N1c3Npb24gd3JvdGU6Cj4KPj4gVGhhdCBtYXkgYmUgYSBmaW5lIHJlc291cmNl
IGZvciB0aG9zZSB3aG8gY2FuIHVzZSBZb3VUdWJlLgo+PiB3aGF0IGhhcyBhbHdheXMgY29uY2Vy
bmVkIG1lIGFib3V0IExpbnV4IHRob3VnaCBpcyB3aGF0IHNlZW1zIHRvIGJlIGEgbGFjayBvZgo+
PiBleHRlcm5hbCBzb2xpZCByZXNvdXJjZXMgcHJvdmlkaW5nIHN1Y2ggY29udGVudC4KPj4gWW91
VHViZSBnZXRzIGxlc3MgaW5jbHVzaXZlIGZvciBsb3dlciBncmFwaGljcyB1c2VycyBhbGwgdGhl
IHRpbWUuCj4+IEFuZCBub3QgZXZlcnlvbmUgbGVhcm5zIHdlbGwgZnJvbSB2aWRlb3MuCj4+Cj4+
Cj4+Cj4+IE9uIFN1biwgMzEgT2N0IDIwMjEsIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1
c3Npb24gd3JvdGU6Cj4+Cj4+PiBIaSwKPj4+IEZvciB0aGUgbmV3IExpbnV4IHVzZXJzIHN1Y2gg
YXMgbXlzZWxmLAo+Pj4gSSBmb3VuZCB0aGlzIG9uIFlvdXR1YmUuCj4+PiBJIGxlYXJuZWQgdGhh
dCB5b3UgY2FuIG9wZW4gdGhlIHRlcm1pbmFsIHdpdGgKPj4+IGN0cmwrYWx0K3QKPj4+IENoZWNr
b3V0IHRoaXMgdmlkZW8uCj4+PiBodHRwczovL3lvdXR1LmJlL3MzaWk0OHFZQnhBCj4+Pgo+Pj4K
Pj4+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4+PiBC
bGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPj4+IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPj4+IGh0
dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKPj4+
Cj4+Pgo+PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+
PiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+PiBo
dHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cj4+
Cj4+Cj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBC
bGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4gaHR0cHM6
Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo+CgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpCbGludXgtbGlzdCBt
YWlsaW5nIGxpc3QKQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQpodHRwczovL2xpc3RtYW4ucmVkaGF0
LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0

