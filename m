Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id C624C440B60
	for <lists+blinux-list@lfdr.de>; Sat, 30 Oct 2021 20:57:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1635620234;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=/NAwy1eSE7ZXjjQSaEjKaWZ+YvKyJ0Y7VYENyvkdgA4=;
	b=JaRiUYvKIcMYrdmLmT8U5vV5+2T7raPNn5iXF0ujQTgl3SJ8PKzxo6LWMyNtHY30EYjBx/
	ZnthhWXBiM6nBvHBD9O+YuRERGfFgHH03eEayIDcqDq0d3/qPTo8MReTqQGRm1QRhWDoep
	7j9dVcZKKAfat9dgP5p2Z50/JZt4snE=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-300-wea8VsIeNXW80cyYJN9adQ-1; Sat, 30 Oct 2021 14:57:10 -0400
X-MC-Unique: wea8VsIeNXW80cyYJN9adQ-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 0247E10A8E01;
	Sat, 30 Oct 2021 18:57:07 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 944AF19741;
	Sat, 30 Oct 2021 18:57:05 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 22C364E58E;
	Sat, 30 Oct 2021 18:57:01 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 19UIuc8T016094 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 30 Oct 2021 14:56:38 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id A183D2026D5D; Sat, 30 Oct 2021 18:56:38 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 9C92A2026D48
	for <blinux-list@redhat.com>; Sat, 30 Oct 2021 18:56:35 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id D78668564EE
	for <blinux-list@redhat.com>; Sat, 30 Oct 2021 18:56:35 +0000 (UTC)
Received: from mail-qv1-f49.google.com (mail-qv1-f49.google.com
	[209.85.219.49]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-138-ebmBSFNcOB2CTjX_apOeLA-1; Sat, 30 Oct 2021 14:56:33 -0400
X-MC-Unique: ebmBSFNcOB2CTjX_apOeLA-1
Received: by mail-qv1-f49.google.com with SMTP id j9so2614972qvm.10
	for <blinux-list@redhat.com>; Sat, 30 Oct 2021 11:56:33 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:content-transfer-encoding:from:mime-version
	:subject:date:message-id:references:in-reply-to:to;
	bh=7iUVXdDR2lxSwrKJntVnMj6myMGSI8xs5gFnkO2ibVI=;
	b=IRvyx4mL4fIUaK7AI+IkDqE79YL9kPM7dqIYEjNXwBFRCd/vZXhCh63EO2LAndZWw7
	NoCGYzZatFRuLWssOMHVzrhpKCj+S5Gm1efgD6tMATHTlHe1iUYi7X7IUnDMLpRq2lHQ
	DqISMiiI+USVHxjoJ2uWMnAjXpafSXKjzx1jYZT0kTWJhSQuFDM+sFxqiOZ6F29QcWvu
	vs6Ouv2DOI/1IReXBZc8cf8/Xaip7Pcca0fMKnOpjjNcS8uYrQV7ETmSVhuzxCqPP6d6
	ixSUupmLhF6Q5FXeR5EhLKaybPc93L2adDvLhCUKQEi1U9Mgmmqh7mvRL/RbvwprtDhw
	rINQ==
X-Gm-Message-State: AOAM531brlLn+WvS3cvDzOJ3kxoMk7+ekUaReoXtG3VGTO7IIVunh02q
	dPNGyh9GT81TQiqfol2ENHrTIWsjmnLMlw==
X-Google-Smtp-Source: ABdhPJwnSIUwYJQpN/3gMzRRCvjbogurS5HEEvGJmA42X0n0F4G5+Q0NEhSe6seDu6GiQOp/ak2ceA==
X-Received: by 2002:ad4:5b81:: with SMTP id 1mr18442969qvp.48.1635620193073;
	Sat, 30 Oct 2021 11:56:33 -0700 (PDT)
Received: from smtpclient.apple ([2601:152:4000:330:7d8a:2bf5:e86c:2b50])
	by smtp.gmail.com with ESMTPSA id
	p15sm1335903qkp.93.2021.10.30.11.56.32 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Sat, 30 Oct 2021 11:56:32 -0700 (PDT)
Mime-Version: 1.0 (1.0)
Subject: Re: Accessible Coconut speech at startup
Date: Sat, 30 Oct 2021 14:56:31 -0400
Message-Id: <DA67F7C5-5947-4414-83A3-8E27FC9B60DB@gmail.com>
References: <9F0E8E47-7471-495E-A98F-BCB9122EB801@gmail.com>
In-Reply-To: <9F0E8E47-7471-495E-A98F-BCB9122EB801@gmail.com>
To: blinux-list@redhat.com
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
	lists01.pubmisc.prod.ext.phx2.redhat.com id 19UIuc8T016094
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGkgCklzIHRoZXJlIGEgc2hvcnRjdXQgb3IgYSBob3RrZXkgdG8gc2hvdyB0aGUgbGlzdCBvZiBh
dmFpbGFibGUgd2ktZmkgbmV0d29ya3MgaW4gYWNjZXNzaWJsZSBjb2NvbnV0PyBTbyBmYXIgSSBj
YW4gb25seSBnZXQgYSBsaXN0IG9mIHdpLWZpIG5ldHdvcmsgYnkgcHJldGVuZGluZyB0byBpbnN0
YWxsIGNvY29udXQuIFdoZW4gaSB0eXBlIG5ldHdvcmsgaW4gdGhlIHNlYXJjaCBpIGdldCBvcHRp
b25zIGZvciBzZXR0aW5nIHByb3h5LgpUaGFua3MgYSBsb3QgZm9yIHlvdXIgaGVscC4KSWJyYWhp
bQoKClNlbnQgZnJvbSBteSBpUGhvbmUKCj4gT24gT2N0IDI5LCAyMDIxLCBhdCAxMToxNCBQTSwg
TGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiA8YmxpbnV4LWxpc3RAcmVkaGF0LmNv
bT4gd3JvdGU6Cj4gCj4g77u/U2NyZWVuIHJlYWRlciBzZXR0aW5ncyAKPiBJbnNlcnQgcGx1cyBz
cGFjZQo+IAo+IAo+IFNlbnQgZnJvbSBteSBpUGhvbmUKPiAKPj4gT24gT2N0IDI5LCAyMDIxLCBh
dCAxMTowNCBQTSwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiA8YmxpbnV4LWxp
c3RAcmVkaGF0LmNvbT4gd3JvdGU6Cj4+IAo+PiDvu79UaGFua3MgYSBtaWxsaW9uLiBJIGp1c3Qg
ZmlndXJlZCB3aGF0IEkgd2FzIGRvaW5nIHdvcm5nLiBJIGp1c3QgcmVhbGl6ZWQgdGhhdCBoaXR0
aW5nIGFsdC1mMSBvciBhbHQtZjIgZG9lcyBub3Qgd29yayBvbiBteSBsYXB0b3AuIEkgbmVlZGVk
IHRvIHB1c2ggdGhlIGZ1bmN0aW9uIGtleSBhbG9uZyB3aXRoIHRoZSBhbHQgZjEgb3IgZjIgZm9y
IGl0IHRvIHdvcmsuIE5vdyBJIGNhbiBhY2Nlc3MgdGhlIG1lbnVzIGp1c3QgZmluZS4KPj4gCj4+
IEkgc3RpbGwgbmVlZCB0byBmaWd1cmUgb3V0IGEgd2F5IG9mIGNoYW5naW5nIHRoZSBkZWZhdWx0
IHNwZWVjaCBlbmdpbmUsIGFuZCBhIHdheSB0byBoYXZlIGl0IGRpc3BsYXkgZm9yZWlnbiBjaGFy
YWN0ZXJzIG9uIHRoZSBCcmFpbGxlIGRpc3BsYXkuIEZvciBleGFtcGxlLCBXaGVuIEkgZG8gYSB5
b3V0dWJlIHNlYXJjaCBhbmQgZ2V0IGEgaGl0IGluIEFyYWJpYyBvciBIZWJyZXcgaXQgZGlzcGxh
eXMgdGhlIEFyYWJpYyBvciBIZWJyZXcgY2hhcmFjdGVycyBhcyBxdWVzdGlvbiBtYXJrcy4gSSBh
bSBzdXJlIHRoZXJlIGlzIGEgd2F5IG9mIGRlYWxpbmcgd2l0aCB0aGlzLgo+PiAKPj4gaW4gdGhl
IG5leHQgc3RhZ2UsIEkgbmVlZCB0byBmaWd1cmUgYSBzYWZlIHdheSBvZiBpbnN0YWxsaW5nIGl0
IGFsb25nc2lkZSBteSB3aW5kb3dzIHdpdGhvdXQgc2NyZXdpbmcgdSAgICBwIG15IHdpbmRvd3Mg
b3BwZXJhdGlvbi4KPj4gCj4+IFRoYW5rcyBhIGxvdCBhZ2FpbiBmb3IgeW91ciBoZWxwLgo+PiAK
Pj4gQnkgdGhlIHdheSBJIGFtIG5vdyB3cml0aW5nIHRoaXMgZW1haWwgdXNpbmcgdGhlIHRodW5k
ZXJiaXJkIHRoYXQgY29tZXMgd2l0aCB0aGUgYWNjZXNzaWJsZSBDb2NvbnV0Cj4+IAo+Pj4+IE9u
IDEwLzMwLzIxIDY6MDQgQU0sIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gd3Jv
dGU6Cj4+PiBzdXBlci10IG1heSBnZXQgeW91IGEgdGVybWluYWwgd2hpY2ggZ2l2ZXMgeW91IGEg
Y29tbWFuZCBsaW5lLiAgWW91J2xsCj4+PiBrbm93IGlmIGEgJCBjb21lcyB1cCBhcyBhICBwcm9t
cHQgb3IgYSAjIGNvbWVzIHVwLiAgRmFpbGluZyB0aGF0IGFsdC0rZjIKPj4+IHRoZW4gdHlwZSBt
YXRlLXRlcm1pbmFsIG9yIGdub21lLXRlcm1pbmFsIGFuZCBoaXQgZW50ZXIuCj4+PiAKPj4+IAo+
Pj4+IE9uIEZyaSwgMjkgT2N0IDIwMjEsIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Np
b24gd3JvdGU6Cj4+Pj4gCj4+Pj4gVGhhbmtzIGEgbWlsbGlvbiBmb3IgeW91ciBoZWxwLiBJIHRy
aWVkIHlvdXIgIHN1Z2dlc3Rpb25zIHRvIG5vIGF2YWlsLiBIb3dldmVyLCBzb21ldGhpbmcgc3Ry
YW5nZSBoYXBwZW5lZCwgd2hlbiBJIGNvbm5lY3RlZCBteSBicmFpbGxlIGRpc3BsYXkgaXQgY29u
bmVjdGVkIHRvIGFjY2Vzc2libGUgY29jb251dCByaWdodCBhd2F5LiBJIHdhcyBhYmxlIHRvIGJy
b3dzZSB0aGUgbWVudXMgYW5kIGNvbm5lY3QgdG8gdGhlIGludGVybmV0LiBEdXJpbmcgbXkgYnJv
d3NpbmcgdGhlIHNwZWVjaCBjYW1lIG9uLgo+Pj4+IEkgaGF2ZSB0d28gcXVlc3Rpb25zLCBob3cg
Y2FuIEkgZ2V0IGEgY29tbWFuZCBsaW5lIHByb21wdD8gTXkgc2Vjb25kIHF1ZXN0aW9uIGlzLCB3
aGF0IGlzIHRoZSBjb21tYW5kIHRvIHR1cm4gb2ZmIHRoZSBjb21wdXRlcj8gQWx0IGY0IGRpZCBu
b3QgdGFrZSBtZSB0aGVyZS4KPj4+PiBDaGVlcnMsCj4+Pj4gSWJyYWhpbQo+Pj4+IAo+Pj4+IAo+
Pj4+IFNlbnQgZnJvbSBteSBpUGhvbmUKPj4+PiAKPj4+Pj4gT24gT2N0IDI5LCAyMDIxLCBhdCAx
OjU2IFBNLCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIDxibGludXgtbGlzdEBy
ZWRoYXQuY29tPiB3cm90ZToKPj4+Pj4gCj4+Pj4+IO+7v1ByZXNzIGFsdCBwbHVzIEYxLgo+Pj4+
PiBEbyB5b3UgaGVhciBzcGVlY2g/Cj4+Pj4+IElmIG5vdCwgcHJlc3MgZXNjYXBlLgo+Pj4+PiBQ
cmVzcyBhbHQgcGx1cyBGMgo+Pj4+PiBUeXBlCj4+Pj4+IG9yY2EKPj4+Pj4gUHJlc3MgZW50ZXIu
Cj4+Pj4+IFRoaXMgc2hvdWxkIGZpeCBpdC4KPj4+Pj4gCj4+Pj4+IAo+Pj4+PiBTZW50IGZyb20g
bXkgaVBob25lCj4+Pj4+IAo+Pj4+Pj4gT24gT2N0IDI5LCAyMDIxLCBhdCAxOjI1IFBNLCBMaW51
eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIDxibGludXgtbGlzdEByZWRoYXQuY29tPiB3
cm90ZToKPj4+Pj4+IAo+Pj4+Pj4g77u/SXMgdGhlcmUgYSBzdGVwIGJ5IHN0ZXAgdHV0b3JpYWwg
b24gaG93IHRvIHN0YXJ0Pwo+Pj4+Pj4gSSBkb3dubG9hZGVkIHRoZSBhY2Nlc3NpYmxlIGNvY29u
dXQgaXNvIGFuZCBwdXQgaXQgb24gYSBib290YWJsZSB1c2IgZHJpdmUuIEkgd2FzIGFibGUgdG8g
Ym9vdCB0aGUgbWFjaGluZSBmcm9tIHRoZSB1c2IsIGJ1dCB0aGVyZSB3YXMgbm8gc3BlZWNoIHRv
IGd1aWRlIG1lLiBJIHdhcyBhYmxlIHRvIGNvbmZpcm0gdGhhdCBJIGluZGVlZCBib290ZWQgZnJv
bSB1c2Igd2l0aCBhY2Nlc3NpYmxlIGNvY29udXQgYnkgdXNpbmcgbXkgaVBob25lIGNhbWVyYS4g
SSBoYXZlIG5vIGlkZWEgaG93IHRvIGdldCB0aGUgc3BlZWNoIGdvaW5nLiBTbyBwbGVhc2UgaWYg
eW91IGhhdmUgYSB0dXRvcmlhbCwgc2VuZCBpdCBteSB3YXkuCj4+Pj4+PiBJYnJhaGltCj4+Pj4+
PiAKPj4+Pj4+IFNlbnQgZnJvbSBteSBpUGhvbmUKPj4+Pj4+IAo+Pj4+Pj4+PiBPbiBPY3QgMjks
IDIwMjEsIGF0IDEwOjI5IEFNLCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIDxi
bGludXgtbGlzdEByZWRoYXQuY29tPiB3cm90ZToKPj4+Pj4+PiDvu79IZWxsbywKPj4+Pj4+PiBX
aGVuIHVzaW5nIHRoZSBsaXZlIENELCBUaGUgc2NyZWVucmVhZGVyIHN0YXJ0ZWQgYXQgYm9vdC4K
Pj4+Pj4+PiBCdXQgYSAgYWZ0ZXIgSSBpbnN0YWxsZWQgaXQsIEkgZ2V0IG5vIHNjcmVlbnJlYWRl
ciBhdCBzdGFydHVwLgo+Pj4+Pj4+IEFsbCBzZXR0aW5ncyBhcyBmYXIgYXMgSSBrbm93IGFyZSBj
b3JyZWN0Lgo+Pj4+Pj4+IFRoZSBvbmx5IHdheSB0byBnZXQgc3BlZWNoIGlzIHRvIGdvIHRvIHRo
ZSBydW4gd2luZG93IHdpdGgKPj4+Pj4+PiBBbHQrRjIKPj4+Pj4+PiBUaGVuIHR5cGUKPj4+Pj4+
PiBvcmNhCj4+Pj4+Pj4gQW5kIHByZXNzIGVudGVyLgo+Pj4+Pj4+IEkgcmVpbnN0YWxsZWQgbGlu
dXggYW5kIGdvdCB0aGUgc2FtZSByZXN1bHQuCj4+Pj4+Pj4gQXMgSSB3YXMgZG9pbmcgdGhlIGlu
c3RhbGwsIEkgY2hlY2tlZCB0aGUgYm94IHRvIGdldCB1cGRhdGVzIGR1cmluZyB0aGUgaW5zdGFs
bC4gQ291bGQgdGhpcyBiZSB0aGUgY2F1c2Ugb2YgbXkgdHJvdWJsZT8KPj4+Pj4+PiAKPj4+Pj4+
PiBUaGFua3MsCj4+Pj4+Pj4gUm9iCj4+Pj4+Pj4gCj4+Pj4+Pj4gCj4+Pj4+Pj4gX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPj4+Pj4+PiBCbGludXgtbGlz
dCBtYWlsaW5nIGxpc3QKPj4+Pj4+PiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4+Pj4+Pj4gaHR0
cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo+Pj4+
Pj4+IAo+Pj4+Pj4gCj4+Pj4+PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwo+Pj4+Pj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4+Pj4+PiBCbGludXgt
bGlzdEByZWRoYXQuY29tCj4+Pj4+PiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFu
L2xpc3RpbmZvL2JsaW51eC1saXN0Cj4+Pj4+IAo+Pj4+PiBfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwo+Pj4+PiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QK
Pj4+Pj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+Pj4+PiBodHRwczovL2xpc3RtYW4ucmVkaGF0
LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cj4+Pj4gCj4+Pj4gX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPj4+PiBCbGludXgtbGlzdCBtYWls
aW5nIGxpc3QKPj4+PiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4+Pj4gaHR0cHM6Ly9saXN0bWFu
LnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo+Pj4gCj4+PiBfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+Pj4gQmxpbnV4LWxpc3Qg
bWFpbGluZyBsaXN0Cj4+PiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4+PiBodHRwczovL2xpc3Rt
YW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cj4+IAo+PiBfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+PiBCbGludXgtbGlzdCBt
YWlsaW5nIGxpc3QKPj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+PiBodHRwczovL2xpc3RtYW4u
cmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cj4gCj4gCj4gX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBCbGludXgtbGlzdCBtYWls
aW5nIGxpc3QKPiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhh
dC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAoKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkJsaW51eC1saXN0IG1haWxpbmcgbGlzdApCbGlu
dXgtbGlzdEByZWRoYXQuY29tCmh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlz
dGluZm8vYmxpbnV4LWxpc3Q=

