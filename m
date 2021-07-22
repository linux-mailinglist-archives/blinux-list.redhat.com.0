Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id CC28C3D24F7
	for <lists+blinux-list@lfdr.de>; Thu, 22 Jul 2021 15:58:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1626962306;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=4a78ngxEUPYnTrz0soRa9skbSMNuDJt6QTX8dVOiH5Y=;
	b=ROUYPrVf65Ll3AZUyc9pRmoS67CevVMluikjEoWrommoNorI90HWVmFkRe4nFtXBttNwQw
	Vu505qLVHABkVMQ+XahTkOMphFx0bteEVurx1GD4LLzPIe23qsmJ8hwBWX9OctCByxT7/k
	DadIQ+tgteFNm0R2kT0SjlVND9DrfMI=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-211-plXDldvlPNSs8ZIw5CYeqA-1; Thu, 22 Jul 2021 09:58:25 -0400
X-MC-Unique: plXDldvlPNSs8ZIw5CYeqA-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id F1633190A7A7;
	Thu, 22 Jul 2021 13:58:20 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id D708B60C05;
	Thu, 22 Jul 2021 13:58:20 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id E347B180BAB1;
	Thu, 22 Jul 2021 13:58:19 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 16MDwFkK010809 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 22 Jul 2021 09:58:16 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id CE59510CB276; Thu, 22 Jul 2021 13:58:15 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id CA0A010CB275
	for <blinux-list@redhat.com>; Thu, 22 Jul 2021 13:58:13 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 146A11078460
	for <blinux-list@redhat.com>; Thu, 22 Jul 2021 13:58:13 +0000 (UTC)
Received: from mail-ed1-f52.google.com (mail-ed1-f52.google.com
	[209.85.208.52]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-21-J-6OhfsyOE2XQ0foQhP9Ig-1; Thu, 22 Jul 2021 09:58:10 -0400
X-MC-Unique: J-6OhfsyOE2XQ0foQhP9Ig-1
Received: by mail-ed1-f52.google.com with SMTP id l1so6900266edr.11
	for <blinux-list@redhat.com>; Thu, 22 Jul 2021 06:58:10 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=f18ns77SKenFuFlrl5H/0lT53NhFJ1QWokc1nLcHZH4=;
	b=OBg/B2VKlEKVJ+6Np6eA9KNuk8Rp84Rb6GmmYf838BiJM9BSX/Jlqrx+EBGvGYHaCt
	OIUbJ9GxiL2OQB5UacBVyvyx3r1zEbXMmoNqE/W1+40j3a7ExeSdc6aGbYzJi8ZNRquD
	vx1p3I5ur1fKM7elnvtWDHQdLNXKi6NTFAUv/9QpXjxFJ/7FX7AKPMxa5tAcFCtOteIw
	qjMASHOmACWzaWx9KZ+lJL+vPQmQ+mg9cFEaM6LILWd3jamk0A7wRz2ebw7XScuiXAHc
	/ucC3LflvpFmD2JDXZZXe0h0kODegVROTlKMFYAgNgdv4gRjyvBKi/W9mF4BYVyz00EH
	coGA==
X-Gm-Message-State: AOAM530mHB5kfHcA+kmb2Sqk/1Jio28csPLwChZ3JCALX/lr3IMZmY1f
	NHtCUbtYlP+hqVpaMmEIqaqW/oxPJhEU/Q==
X-Google-Smtp-Source: ABdhPJzQGMpXJUkr09bZ6hWvqpSXr/LDlUR8DE8DgvIgpEbS4n5JFoxnmj1ZOZGdz/fbspjrBftL+w==
X-Received: by 2002:aa7:c74e:: with SMTP id c14mr54654952eds.40.1626962289563; 
	Thu, 22 Jul 2021 06:58:09 -0700 (PDT)
Received: from darkstar.example.slint ([197.185.98.226])
	by smtp.gmail.com with ESMTPSA id l3sm9474796ejs.78.2021.07.22.06.58.07
	for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Thu, 22 Jul 2021 06:58:08 -0700 (PDT)
Subject: Re: A question on speakup
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <ac70ffcc-fbf1-626e-9348-559c650efce7@gmail.com>
	<5e378258-7faf-6589-1ab2-59cd30ce33fa@slint.fr>
	<d8126558-ed6e-87cd-bac9-1a8bd4390fef@gmail.com>
	<f4215214-cbae-695c-0c96-8bb7b7911c8e@slint.fr>
Message-ID: <1ba271bb-35b5-836d-b928-95fe00f86e27@gmail.com>
Date: Thu, 22 Jul 2021 15:58:05 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
	Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <f4215214-cbae-695c-0c96-8bb7b7911c8e@slint.fr>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
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

SGksCgoKVGhhbmtzLCBnb3QgaXQgc29ydGVkLgoKCldhcm0gcmVnYXJkcywKCkJyYW5kdCBTdGVl
bmthbXAKClNlbnQgdXNpbmcgVGh1bmRlcmJpcmQgZnJvbSBTbGludAoKT24gNy8yMi8yMSAzOjIy
IFBNLCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIHdyb3RlOgo+IEhpLAo+Cj4g
dGhlIHZvaWNlIGlzIHNldCBpbiAvZXRjL2VzcGVha3VwLmNvbmYKPgo+IFRvIGxpc3QgdGhlIGF2
YWlsYWJsZSBvbmVzIChmb3IgZXNwZWFrLW5nKToKPiBsaXN0LWVzcGVhay1uZy12b2ljZXMKPgo+
IENoZWVycywKPiBEaWRpZXIKPgo+IExlIDIyLzA3LzIwMjEgw6AgMTQ6NDAsIExpbnV4IGZvciBi
bGluZCBnZW5lcmFsIGRpc2N1c3Npb24gYSDDqWNyaXTCoDoKPj4gSGkgYWdhaW4sCj4+Cj4+Cj4+
IEZvciBzb21lIHJlYXNvbiBlc3BlYWt1cCBjb21lcyB1cCB0YWxraW5nIHdpdGggYSByYXRoZXIg
YmFkIFVTIAo+PiBhY2NlbnQuIElzIHRoZXJlIGEgd2F5IHRvIGNoYW5nZSB0aGUgImxhbmd1YWdl
IiB3aXRob3V0IGtpbGxpbmcgCj4+IGVzcGVha3VwPyBFdmVyeSB0aW1lIEkgZG8gc28sIFNwZWFr
dXAgd2lsbCByZXN0b3JlIG15IHByZXZpb3VzIAo+PiBzZXR0aW5ncywgd2hpY2gsIHVuZm9ydHVu
YXRlbHkgaW5jbHVkZXMgdGhlIGJhZCBVUyB2b2ljZS4KPj4KPj4KPj4gV2FybSByZWdhcmRzLAo+
Pgo+PiBCcmFuZHQgU3RlZW5rYW1wCj4+Cj4+IFNlbnQgdXNpbmcgVGh1bmRlcmJpcmQgZnJvbSBT
bGludAo+Pgo+PiBPbiA3LzIyLzIxIDEyOjMwIFBNLCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBk
aXNjdXNzaW9uIHdyb3RlOgo+Pj4gSGkgQnJhbmR0LAo+Pj4KPj4+IGZvciBTbGludDoKPj4+Cj4+
PiBodHRwczovL3NsaW50LmZyL2RvYy9IYW5kQm9vay5odG1sI19jb25maWd1cmVfYV9jb25zb2xl
X3NjcmVlbl9yZWFkZXIKPj4+Cj4+PiBJIGRvbid0IGtub3cgYSBzcGVjaWZpYyBzb2Z0d2FyZSBz
eW50aGVzaXplciBmb3IgRGVjdGFsaywgYnV0IGp1c3QgCj4+PiB0eXBlIGFzIHJvb3Q6Cj4+PiBz
cGVhay13aXRoCj4+Pgo+Pj4gVG8ga25vdyBtb3JlOgo+Pj4gaHR0cHM6Ly9zbGludC5mci9kb2Mv
SGFuZEJvb2suaHRtbCNfY2hvb3NlX2FfY29uc29sZV9zY3JlZW5fcmVhZGVyCj4+Pgo+Pj4gQ2hl
ZXJzLAo+Pj4gRGlkaWVyCj4+PiAtLSAKPj4+IERpZGllciBTcGFpZXIKPj4+Cj4+PiBMZSAyMi8w
Ny8yMDIxIMOgIDEyOjA5LCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIGEgw6lj
cml0wqA6Cj4+Pj4gSGkgYWxsLAo+Pj4+Cj4+Pj4KPj4+PiBJIHVzZSB0byBrbm93IGhvdyB0byBz
dG9yZSBhbmQgdGhlbiByZXN0b3JlIG15IHNwZWFrdXAgc2V0dGluZ3MsIAo+Pj4+IGhvd2V2ZXIs
IHRvIG15IHV0dGVyIHNoYW1lLCBJIGZvcmdvdCBob3cgdG8gZG8gdGhpcy4KPj4+Pgo+Pj4+Cj4+
Pj4gSSBhbHNvIHJlYWQgc29tZXdoZXJlIHRoYXQgdGhlcmUgaXMgYSBzb2Z0d2FyZSBEZWN0YWxr
IHN5bnRoZXNpemVyIAo+Pj4+IGF2YWlsYWJsZS4gSWYgYW55b25lIGtub3dzIGhvdyB0byBpbnN0
YWxsIGFuZCBjb25maWd1cmUgdGhpcyB0byAKPj4+PiB3b3JrIHdpdGggc3BlYWt1cCwgaXQgd291
bGQgcmVhbGx5IGJlIGFwcHJlY2lhdGVkLgo+Pj4+Cj4+Pgo+Pj4KPj4+IF9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4+PiBCbGludXgtbGlzdCBtYWlsaW5n
IGxpc3QKPj4+IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPj4+IGh0dHBzOi8vbGlzdG1hbi5yZWRo
YXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKPj4KPj4gX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPj4gQmxpbnV4LWxpc3QgbWFpbGluZyBs
aXN0Cj4+IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5j
b20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo+Cj4KPiBfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+
IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWls
bWFuL2xpc3RpbmZvL2JsaW51eC1saXN0CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKQmxpbnV4LWxpc3RAcmVk
aGF0LmNvbQpodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51
eC1saXN0

