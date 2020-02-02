Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	by mail.lfdr.de (Postfix) with ESMTP id 0BAA714FB06
	for <lists+blinux-list@lfdr.de>; Sun,  2 Feb 2020 01:16:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1580602586;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=JqBcUh0bEHoSc0Mp369ci6z1TFeAfco4upd8Ejfd1ws=;
	b=WjPSIhVhnUuX5YJsePoxfyQ/kdhB9k4iIVy3mDp0YpySxX7e2EVIijP8UHgkDtvA+ijd8c
	3eTQqu8m0V7gBM27CIPbwZUKSObHB2A2oAoWQuy/HWgiMi4x3CUC9s6jf8fzafG2kupe22
	cSvr6tAnYiRlQfvPQOUiqeervBFmlO8=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-228-VvmeKOpIMMKR9KTxvk5y0Q-1; Sat, 01 Feb 2020 19:16:24 -0500
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 46EC3107ACC9;
	Sun,  2 Feb 2020 00:16:19 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 08CB01036B2D;
	Sun,  2 Feb 2020 00:16:17 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id EA2581809567;
	Sun,  2 Feb 2020 00:16:12 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 0120G5K7008162 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 1 Feb 2020 19:16:05 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 2791310F8E0B; Sun,  2 Feb 2020 00:16:05 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 2323710A50FE
	for <blinux-list@redhat.com>; Sun,  2 Feb 2020 00:16:03 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 6579E185AB71
	for <blinux-list@redhat.com>; Sun,  2 Feb 2020 00:16:03 +0000 (UTC)
Received: from mail-ot1-f53.google.com (mail-ot1-f53.google.com
	[209.85.210.53]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-389-k5vtZoUIMiaOzO_drNjbXQ-1; Sat, 01 Feb 2020 19:16:01 -0500
Received: by mail-ot1-f53.google.com with SMTP id r27so10240386otc.8
	for <blinux-list@redhat.com>; Sat, 01 Feb 2020 16:16:00 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=077NHSMF/LvlgxT1wQr47NCa69M2AI0gECdolXVjpdo=;
	b=Tsdd5NdNKC08/1SPLyP8KFDcNVQ0uenLsBSAcNZ9OfxJ5XmJGqTrCv/0TrJuPR7vP7
	a1/qNeKLolZHfT+L5bDtz4C8Zi1zEKmvYsjshxhlqxfrX+5s8hBpkvM6f9FMUuclXJNQ
	wZ2X/qzVyCyn2yvLlBCkGg/Zq9HQYubRKF364EYFQ7WlyQ0mN5EUvGJS+zmhMttCRcWG
	fm0KHS5VZjI9C2I92Up0vjzVCKPGJnadu4K59X3Ga8IFe0FcyxIFm0ZNKM60RLQN1It3
	mD0nHSfLq39U/G2mgwMjxStxoF0OWM3XX9T3YI8gpTFmoQjtJpsY6PnfdMTEuDGVtMv/
	6YHA==
X-Gm-Message-State: APjAAAV/aeuv2BSsc5eDivsqmN3Ggr57zRUywXAYTaP8KDUCSdh6/gok
	5jrM/VWdI9Aou0UqpwYA+2plmIpg
X-Google-Smtp-Source: APXvYqyAfdtNbM51SABZpxrVjT9E6ktlIEwb/5oVvRiMZbuH72MEirerlCviTbWOdOoMzQ21KFPKgg==
X-Received: by 2002:a9d:6e98:: with SMTP id a24mr12407945otr.53.1580602560112; 
	Sat, 01 Feb 2020 16:16:00 -0800 (PST)
Received: from [192.168.1.14] (74-194-137-49.gtwncmta01.res.dyn.suddenlink.net.
	[74.194.137.49])
	by smtp.gmail.com with ESMTPSA id m2sm4089992oim.13.2020.02.01.16.15.59
	for <blinux-list@redhat.com>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sat, 01 Feb 2020 16:15:59 -0800 (PST)
Subject: Re: A Live Boot Image for the Mac that Talks
To: blinux-list@redhat.com
References: <E1ixMhY-0001xB-U2@wb5agz>
	<alpine.NEB.2.21.2001310111580.13258@panix1.panix.com>
	<E1iy1ln-00062r-3h@wb5agz>
	<alpine.NEB.2.21.2002011806001.10332@panix1.panix.com>
	<d75a7b21-75c1-ee44-5d35-71129cfeea51@verizon.net>
Message-ID: <10e5062a-cb11-97d5-e394-2042b9dedfaf@gmail.com>
Date: Sat, 1 Feb 2020 18:15:59 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <d75a7b21-75c1-ee44-5d35-71129cfeea51@verizon.net>
Content-Language: en-US
X-MC-Unique: k5vtZoUIMiaOzO_drNjbXQ-1
X-MC-Unique: VvmeKOpIMMKR9KTxvk5y0Q-1
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 0120G5K7008162
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Content-Transfer-Encoding: base64

SSdtIGN1cmlvdXMgYWJvdXQgdGhpcyBhcyB3ZWxsLiBJJ3ZlIHVzZWQgZGQgdG8gY3JlYXRlIGJv
b3RhYmxlIFVTQiAKc3RpY2tzIGZvciB5ZWFycy4gSGVyZSdzIGp1c3Qgb25lIHBhZ2UgdGhhdCBp
bnN0cnVjdHMgeW91IHRvIHVzZSBkZCBmcm9tIAp0aGUgY29tbWFuZCBsaW5lIApodHRwczovL2xp
bnV4aXplLmNvbS9wb3N0L2hvdy10by1jcmVhdGUtYS1ib290YWJsZS1saW51eC11c2ItZHJpdmUv
CgoKT24gMi8xLzIwIDU6MzIgUE0sIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24g
d3JvdGU6Cj4gSSBtYXkgYmUgd3JvbmcsIGJ1dCBJIHNlZW0gdG8gcmVtZW1iZXIgaW5zdHJ1Y3Rp
b25zIHRvIGRvIGp1c3QgdGhhdCB0byAKPiBjcmVhdGUgYSBib290YWJsZSBzb3VyY2UgZm9yIGlu
c3RhbGxpbmcgYSBkaXN0cmlidXRpb24uIERvIHlvdSBrbm93IAo+IHdoZXJlIEkgY2FuIHJlYWQg
YWJvdXQgdGhpcyBzdWJqZWN0P8KgIFRoYW5rcyEKPgo+Cj4gQWwKPgo+Cj4gT24gMi8xLzIwIDY6
MDcgUE0sIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gd3JvdGU6Cj4+IGRkIGlz
IG5vdCBhIGdvb2QgY29tbWFuZCBmb3IgYnVybmluZyB1c2Igc3RpY2tzIGFuZCB0aGlzIGlzIHBy
b2JhYmx5IHdoeQo+PiB5b3UgaGFkIGEgZmFpbHVyZS4KPj4KPj4gT24gU2F0LCAxIEZlYiAyMDIw
LCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIHdyb3RlOgo+Pgo+Pj4gRGF0ZTog
U2F0LCAxIEZlYiAyMDIwIDE4OjAxOjQyCj4+PiBGcm9tOiBMaW51eCBmb3IgYmxpbmQgZ2VuZXJh
bCBkaXNjdXNzaW9uIDxibGludXgtbGlzdEByZWRoYXQuY29tPgo+Pj4gVG86IGJsaW51eC1saXN0
QHJlZGhhdC5jb20KPj4+IFN1YmplY3Q6IFJlOiBBIExpdmUgQm9vdCBJbWFnZSBmb3IgdGhlIE1h
YyB0aGF0IFRhbGtzCj4+Pgo+Pj4gSSBzdXNwZWN0IEkgYW0gYWJvdXQgdG8gbGVhcm4gc29tZXRo
aW5nIHNvIGhlcmUncyB0aGUgZGVhbDoKPj4+Cj4+PiDCoMKgwqDCoEkgZG93bmxvYWRlZCB0aGUg
aXNvIGltYWdlIGFuZCB1c2VkIGRkIHRvIHBvdXIgaXQgaW4gdG8gYQo+Pj4gdGh1bWIgZHJpdmUK
Pj4+Cj4+PiBkZCBpZj1pbWFnZWZpbGUgb2Y9L2Rldi9zZGQgaW4gdGhpcyBjYXNlIGFuZCBhd2F5
IGl0IHdlbnQuCj4+Pgo+Pj4gwqDCoMKgwqBTZXZlcmFsIG1pbnV0ZXMgbGF0ZXIsIHRoZSByb3Vn
aGx5IDEtZ2lnIGZpbGUgZW5kZWQgdXAgb24KPj4+IHRoZSB0aHVtYiBkcml2ZS4KPj4+Cj4+PiDC
oMKgwqDCoFRoZSBtYWMgaXMgb2xkIGVub3VnaCBub3QgdG8gaGF2ZSB0aGUgVDIgY2hpcCBzbyBp
ZiB0aGUKPj4+IGRyaXZlIGlzIGJvb3RhYmxlLCBpdCBzaG91bGQgYm9vdCB3aGljaCBpdCBkb2Vz
IG5vdC4KPj4+Cj4+PiDCoMKgwqDCoElmIHlvdSBwbHVnIHRoZSBkcml2ZSBpbiwgYSBtZXNzYWdl
IHBvcHMgdXAgc3RhdGluZyB0aGF0Cj4+PiBpdCBpcyB1bnJlYWRhYmxlIG9uIHRoaXMgY29tcHV0
ZXIKPj4+Cj4+PiDCoMKgwqDCoEhvdyBkbyBJIGdldCB0aGUgTWFjIHRvIGJvb3Qgb2ZmIG9mIHRo
YXQgZHJpdmU/Cj4+Pgo+Pj4gTWFydGluIE1jQ29ybWljawo+Pj4KPj4+Cj4+PiBfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+Pj4gQmxpbnV4LWxpc3QgbWFp
bGluZyBsaXN0Cj4+PiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4+PiBodHRwczovL3d3dy5yZWRo
YXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKPj4+Cj4+Pgo+Cj4KPiBfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IEJsaW51eC1saXN0IG1h
aWxpbmcgbGlzdAo+IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPiBodHRwczovL3d3dy5yZWRoYXQu
Y29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKCi0tIApDaHJpc3RvcGhlciAoQ0opCkNo
YWx0YWluIGF0IEdtYWlsCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0CkJsaW51eC1saXN0QHJlZGhhdC5jb20K
aHR0cHM6Ly93d3cucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0

