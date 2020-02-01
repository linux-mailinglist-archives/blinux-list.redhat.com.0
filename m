Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [207.211.31.120])
	by mail.lfdr.de (Postfix) with ESMTP id 7B8C714FAF3
	for <lists+blinux-list@lfdr.de>; Sun,  2 Feb 2020 00:32:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1580599960;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=tk3O+L7wIEfQGT7WN8UlaFpZBe29lPb5CnQdKxbPBm4=;
	b=iTeEO/ki9m5NVaHcIjD9ETGm/xMYSl29x0dkS7JY9xks98WF5QCJeY7epLX5M5A4brMfA0
	HzGhluDxAjSE8p4ZLv4Z5PwU20UtCQbNjFoeqlWh0cFhpifZMLwQ+DaYGZ6bO8buJhPP4y
	2zufCFLUVbxlM+QM6s4U952ym9OPxJc=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-95-Og8Z5JI4NESKgGdBFFl6sw-1; Sat, 01 Feb 2020 18:32:37 -0500
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 7C61E1851FC5;
	Sat,  1 Feb 2020 23:32:32 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id D114D5D9CD;
	Sat,  1 Feb 2020 23:32:31 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id BA1D685CCA;
	Sat,  1 Feb 2020 23:32:30 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 011NWQj2007516 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 1 Feb 2020 18:32:26 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id A75478851E; Sat,  1 Feb 2020 23:32:26 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id A2C0888513
	for <blinux-list@redhat.com>; Sat,  1 Feb 2020 23:32:24 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 85869800FF2
	for <blinux-list@redhat.com>; Sat,  1 Feb 2020 23:32:24 +0000 (UTC)
X-YMail-OSG: DcnvMucVM1k.muEyG7SP5ETxPdeOYdXtsExUUNXxSk_nzPigaf0zLqAtN76F56t
	T16DL6c92DDr.3McHw8MEUU2gbqT_ED0jfgkct6gSGUYwA_Ojx5E9pff59TzYktn4gh0athUKf7m
	m1G8Nig.5XIn4.6dkD_ZQTcMcO0OgljK__YPn9yOPA7hIm1cSbaO_hp5KLb5c_prMZl8PizNs.k4
	6U.tuz39hLn7O_ictgVwslOjAEpIsPSGv7I1mm.EMlEfLxBkFUGZnypmRdUu0L2VBybq6miBiHz2
	Ligfb.q_AQY2Vs5tHFQBu_qBPdA6MBM_iwcN._.diUZeTnanzW_JXSdFQ7OjGMMMb2QudeBVJNIK
	TaDfA7Q.fvhwaFnfjPF5pR1AEKfzR.ytVGIieHXECMOOS6K5ulUx.3s_YoHHCcu42yzayxKuX1MF
	hmLtYhkGsiiEMykjIMFC6AiUAfK0lZJbZbT4FHCVg8LdcEoMUUFgEexuekF_33T9Ogn70cmhMC6X
	K5JK8uJtwepkkUe66SIltPv53._1XIB3ex7qRYEQPJK6UZUpoeNS03gp0o3P_7PVEnjDUFjPG9pB
	Rf4QbrZINSoYp0bCtH4QluQE.DWjnWDQqIg7pusDlI9Gnpb3b9vo4KFteV_k9lwqYrHA9GaMPb6t
	MfBjGajpPN0QuoTlJtGNsZrSgNNKLijvK_hzGFpFYBlHf59s9Th1hiF_AnThAAn0_BH6zdNmb6An
	.ts0SIEDeFcY7V90q18mW9h5DScSUtp0QjBD_U77Tk4_EvGjG0lP6kq5QXoPKkrHc6BVB20eTHqi
	w6F0.xebA7hdKS6pzg39E296YM63Mf_rfYF1AxXOTFjj5HX5gEE0JYhOYlu2P5NPwHuh2DEPoRZV
	J1B8xCKh6Bn_2aDh4.1Jzdvf6wUbYdkVdfXcWp2poOwhhDpUHhxhj_gG6fHmftSGRRvEf1BKFm7_
	8rUDBQGqiGS4W4KUuJAEi.LBu1lq2G8xco8uBTDXBfu3LlKXzt2QsCPbG8V6TbIJs0U32IdQzt1Y
	euqfpZYCbGnuES4nGnY4nyHeEBEkXrwyLeUvrl6hqmaIQPR6wyl8w9tfgFGP40UiqpUjIkkycq1u
	D5fjtvqQBihU84xRBq229PpmwZzpsg4N7Lm4lqttSX6Zf84thRHCo2IG3p41_mso34IrbaDdvKvb
	MPTF8Mp9V0N5vnqjdXJrD9rNpXae.hoc8Yp7Wmq6apPst3X9NVX6tC.6scagmFc.AV38h_J1j0u1
	JASpZDtfHohp15bumMBLUVbcnTnIC6R3R_mY.s5svnbG25pWdsk8OK0B7jesNkoRSPl9oaWYq4UF
	Zc9sC.C7OaoQ8G9s1SwwGfJL.MXB.jYbS0L0u_eUfVqeRQ1zoTMQL5Nj7Mu00QUvGtvyMRD1Um47
	g.T8-
Received: from sonic307-3.consmr.mail.bf2.yahoo.com
	(sonic307-3.consmr.mail.bf2.yahoo.com [74.6.134.42]) (Using TLS) by
	relay.mimecast.com with ESMTP id us-mta-361-s4OucyN6ObKQZWaEBI1GeA-1;
	Sat, 01 Feb 2020 18:32:21 -0500
Received: from sonic.gate.mail.ne1.yahoo.com by
	sonic307.consmr.mail.bf2.yahoo.com with HTTP;
	Sat, 1 Feb 2020 23:32:21 +0000
Received: by smtp427.mail.bf1.yahoo.com (Oath Hermes SMTP Server) with ESMTPA
	ID e90b6f2be774c14edf30ff73537f9771; 
	Sat, 01 Feb 2020 23:32:17 +0000 (UTC)
Subject: Re: A Live Boot Image for the Mac that Talks
To: blinux-list@redhat.com
References: <E1ixMhY-0001xB-U2@wb5agz>
	<alpine.NEB.2.21.2001310111580.13258@panix1.panix.com>
	<E1iy1ln-00062r-3h@wb5agz>
	<alpine.NEB.2.21.2002011806001.10332@panix1.panix.com>
Message-ID: <d75a7b21-75c1-ee44-5d35-71129cfeea51@verizon.net>
Date: Sat, 1 Feb 2020 18:32:16 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
	Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <alpine.NEB.2.21.2002011806001.10332@panix1.panix.com>
Content-Language: en-US
X-MC-Unique: s4OucyN6ObKQZWaEBI1GeA-1
X-MC-Unique: Og8Z5JI4NESKgGdBFFl6sw-1
X-Scanned-By: MIMEDefang 2.79 on 10.11.54.5
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 011NWQj2007516
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
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Content-Transfer-Encoding: base64

SSBtYXkgYmUgd3JvbmcsIGJ1dCBJIHNlZW0gdG8gcmVtZW1iZXIgaW5zdHJ1Y3Rpb25zIHRvIGRv
IGp1c3QgdGhhdCB0byAKY3JlYXRlIGEgYm9vdGFibGUgc291cmNlIGZvciBpbnN0YWxsaW5nIGEg
ZGlzdHJpYnV0aW9uLiBEbyB5b3Uga25vdyAKd2hlcmUgSSBjYW4gcmVhZCBhYm91dCB0aGlzIHN1
YmplY3Q/wqAgVGhhbmtzIQoKCkFsCgoKT24gMi8xLzIwIDY6MDcgUE0sIExpbnV4IGZvciBibGlu
ZCBnZW5lcmFsIGRpc2N1c3Npb24gd3JvdGU6Cj4gZGQgaXMgbm90IGEgZ29vZCBjb21tYW5kIGZv
ciBidXJuaW5nIHVzYiBzdGlja3MgYW5kIHRoaXMgaXMgcHJvYmFibHkgd2h5Cj4geW91IGhhZCBh
IGZhaWx1cmUuCj4KPiBPbiBTYXQsIDEgRmViIDIwMjAsIExpbnV4IGZvciBibGluZCBnZW5lcmFs
IGRpc2N1c3Npb24gd3JvdGU6Cj4KPj4gRGF0ZTogU2F0LCAxIEZlYiAyMDIwIDE4OjAxOjQyCj4+
IEZyb206IExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gPGJsaW51eC1saXN0QHJl
ZGhhdC5jb20+Cj4+IFRvOiBibGludXgtbGlzdEByZWRoYXQuY29tCj4+IFN1YmplY3Q6IFJlOiBB
IExpdmUgQm9vdCBJbWFnZSBmb3IgdGhlIE1hYyB0aGF0IFRhbGtzCj4+Cj4+IEkgc3VzcGVjdCBJ
IGFtIGFib3V0IHRvIGxlYXJuIHNvbWV0aGluZyBzbyBoZXJlJ3MgdGhlIGRlYWw6Cj4+Cj4+IAlJ
IGRvd25sb2FkZWQgdGhlIGlzbyBpbWFnZSBhbmQgdXNlZCBkZCB0byBwb3VyIGl0IGluIHRvIGEK
Pj4gdGh1bWIgZHJpdmUKPj4KPj4gZGQgaWY9aW1hZ2VmaWxlIG9mPS9kZXYvc2RkIGluIHRoaXMg
Y2FzZSBhbmQgYXdheSBpdCB3ZW50Lgo+Pgo+PiAJU2V2ZXJhbCBtaW51dGVzIGxhdGVyLCB0aGUg
cm91Z2hseSAxLWdpZyBmaWxlIGVuZGVkIHVwIG9uCj4+IHRoZSB0aHVtYiBkcml2ZS4KPj4KPj4g
CVRoZSBtYWMgaXMgb2xkIGVub3VnaCBub3QgdG8gaGF2ZSB0aGUgVDIgY2hpcCBzbyBpZiB0aGUK
Pj4gZHJpdmUgaXMgYm9vdGFibGUsIGl0IHNob3VsZCBib290IHdoaWNoIGl0IGRvZXMgbm90Lgo+
Pgo+PiAJSWYgeW91IHBsdWcgdGhlIGRyaXZlIGluLCBhIG1lc3NhZ2UgcG9wcyB1cCBzdGF0aW5n
IHRoYXQKPj4gaXQgaXMgdW5yZWFkYWJsZSBvbiB0aGlzIGNvbXB1dGVyCj4+Cj4+IAlIb3cgZG8g
SSBnZXQgdGhlIE1hYyB0byBib290IG9mZiBvZiB0aGF0IGRyaXZlPwo+Pgo+PiBNYXJ0aW4gTWND
b3JtaWNrCj4+Cj4+Cj4+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCj4+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+PiBCbGludXgtbGlzdEByZWRoYXQu
Y29tCj4+IGh0dHBzOi8vd3d3LnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlz
dAo+Pgo+PgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkJsaW51eC1saXN0IG1haWxpbmcgbGlzdApCbGludXgtbGlzdEByZWRoYXQuY29tCmh0dHBzOi8v
d3d3LnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdA==

