Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id D4CBC48FB2C
	for <lists+blinux-list@lfdr.de>; Sun, 16 Jan 2022 07:12:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1642313563;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=vBtU4sYagNCOd4JXf95AcSZNW+CMgpYdndr052RZIac=;
	b=JU3chNO3DRLV5eE6nJEeBJvUkrjlt8DdBtTqX0g8u8O3s1DSB/xefV679wFIMY/ZC44DZQ
	1dXRX/NZuTSML/bYxEmGb5bjngsYLUVjSODHIS3uoL1Pd/OO8v9B/6V1/B3tgLeHoeFUc9
	VgAjdfP0jL2NU8lnbfqeUeqNjUh+7H0=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-591-HN_pPO8gNEagoYLR6RALiQ-1; Sun, 16 Jan 2022 01:12:40 -0500
X-MC-Unique: HN_pPO8gNEagoYLR6RALiQ-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 2757A801B0C;
	Sun, 16 Jan 2022 06:12:36 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 6AD1E108B1;
	Sun, 16 Jan 2022 06:12:35 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 34BB74BB7C;
	Sun, 16 Jan 2022 06:12:34 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx09.intmail.prod.int.rdu2.redhat.com
	[10.11.54.9])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 20G6CTgi025716 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 16 Jan 2022 01:12:29 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id E2AFE492CA7; Sun, 16 Jan 2022 06:12:28 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id DE0DF492C3B
	for <blinux-list@redhat.com>; Sun, 16 Jan 2022 06:12:28 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id C35DE811E76
	for <blinux-list@redhat.com>; Sun, 16 Jan 2022 06:12:28 +0000 (UTC)
Received: from mail-ua1-f47.google.com (mail-ua1-f47.google.com
	[209.85.222.47]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-594-exz2EhpsNxy3Wdo-Jdq_mg-1; Sun, 16 Jan 2022 01:12:27 -0500
X-MC-Unique: exz2EhpsNxy3Wdo-Jdq_mg-1
Received: by mail-ua1-f47.google.com with SMTP id p1so24520615uap.9
	for <blinux-list@redhat.com>; Sat, 15 Jan 2022 22:12:26 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:content-transfer-encoding:from:mime-version
	:subject:date:message-id:references:in-reply-to:to;
	bh=Wm3PMIxzzePKGFYFeagbcW8/9AMxBHGwg9sphypFYHE=;
	b=vmL20Imy2ElKZPaXi0AQP6m1zuc1Oi/rMNQQbB4BzzII3LWT/Bz7LyS6I8mwKxod3i
	sjhz5BTQISzCCU/2OT2PhlcmkCJvnYXXvOpZ4zOAlAFf9SrUqWs6HnmgF5rXT/KUnCgq
	WdbOQ2v9SqxIodI/6i/EVmi9KKXeJfiyfINJQE/Wcdw3sGOFLWKXqY28QgWvowm32eOL
	MYVIUGJyff+fc0qbUCbLFP6C7AXmte9CGeGrH2eWLsmx+kd9Q0DUVYunCpxh+fVHcr6H
	bKj2lTgVwA49sJ23aWPLbQu9HQigOVlY9wFNbOoSRpJDDxYKv6O7hP8X8DjDbmvEV/nP
	gnng==
X-Gm-Message-State: AOAM532CeDuo5OvoQNAxd0HnNTdIQ1W/wrwpc8KW9hc8ePaqKLxoO/C7
	FDlMXiO9S+FjsaU8kPF0FPUtklSA2+2PWA==
X-Google-Smtp-Source: ABdhPJyeIkj4ZNZbc9D8ZAjDlDkPuIb3q+aQZcFuRFNbHjKk2ITkyPXwyQ43IdDTTfcQBTqIrztYcQ==
X-Received: by 2002:a67:df84:: with SMTP id x4mr6058178vsk.84.1642313546178;
	Sat, 15 Jan 2022 22:12:26 -0800 (PST)
Received: from smtpclient.apple (184-090-011-149.res.spectrum.com.
	[184.90.11.149]) by smtp.gmail.com with ESMTPSA id
	d198sm2826297vke.44.2022.01.15.22.12.25 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Sat, 15 Jan 2022 22:12:25 -0800 (PST)
Mime-Version: 1.0 (1.0)
Subject: Re: No Orca in Fedora
Date: Sun, 16 Jan 2022 01:12:24 -0500
Message-Id: <09401F75-592F-451E-9844-0F36A1D8653C@gmail.com>
References: <B0B90163-0798-4BFA-97E5-D970C2674C7A@icloud.com>
In-Reply-To: <B0B90163-0798-4BFA-97E5-D970C2674C7A@icloud.com>
To: blinux-list@redhat.com
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.9
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 20G6CTgi025716
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

RmVkb3JhIG1hdGUgY29tZXMgd2l0aCBvcmNhLgoKU2VudCBmcm9tIG15IGlQaG9uZQoKPiBPbiBK
YW4gMTUsIDIwMjIsIGF0IDEwOjU1IFBNLCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNz
aW9uIDxibGludXgtbGlzdEByZWRoYXQuY29tPiB3cm90ZToKPiAKPiDvu79PSyB0aGFua3MsCj4g
SeKAmWxsIGp1c3QgZGVsZXRlIHRoZSBGZWRvcmEgVk0uIEl0cyBub3Qgd29ydGggdGhlIGhhc3Ns
ZS4KPiAKPiAKPj4gT24gSmFuIDE1LCAyMDIyLCBhdCAxMDozMiBQTSwgTGludXggZm9yIGJsaW5k
IGdlbmVyYWwgZGlzY3Vzc2lvbiA8YmxpbnV4LWxpc3RAcmVkaGF0LmNvbT4gd3JvdGU6Cj4+IAo+
PiBJdCB3b24ndC4gIFZlcnkgZmV3IGZsYXZvcnMgb2YgRmVkb3JhIGhhdmUgb3JjYSBpbiB0aGVt
Lgo+PiBmZWRvcmEtd29ya3N0YXRpb24gSSB0aGluayBpcyBnbm9tZSBoYXMgb3JjYSBidXQgc28g
ZmFyIGFzIEkgbm93IGtub3csCj4+IHRoYXQncyB0aGUgb25seSBzcGluIHdpdGggb3JjYSBpbiBp
dC4KPj4gSG93IHRvIGdldCBhcm91bmQgdGhpcyB3b3VsZCBiZSB0byBoYXZlIGEga2lja3N0YXJ0
IGZpbGUgbWFkZSBmb3IgYQo+PiBmZWRvcmEtd29ya3N0YXRpb24gc3BpbiBpbnN0YWxsLgo+PiBP
bmNlIHRoYXQga2lja3N0YXJ0IGZpbGUgaXMgbWFkZSwgeW91J2xsIGhhdmUgdG8gdW5kZXJzdGFu
ZCBraWNrc3RhcnQgZmlsZQo+PiBzeW50YXggYW5kIHRoZSBwb3N0LWluc3RhbGwgY29tbWFuZC4K
Pj4gWW91J2Qgd2FudCB0byBwdXQgYSBwb3N0LWluc3RhbGwgY29tbWFuZCBpbiB0aGF0IGluc3Rh
bGxzIG9yY2EgYW5kIGFsbCBvZgo+PiBpdHMgZGVwZW5kZW5jaWVzIGFuZCB0aGVuIHVzZSB0aGUg
a2lja3N0YXJ0IGZpbGUgeW91IG1vZGlmaWVkIHRvIGluc3RhbGwKPj4geW91ciBkZXNpcmVkIHNw
aW4uCj4+IAo+PiAKPj4+IE9uIFNhdCwgMTUgSmFuIDIwMjIsIExpbnV4IGZvciBibGluZCBnZW5l
cmFsIGRpc2N1c3Npb24gd3JvdGU6Cj4+PiAKPj4+IEhpLAo+Pj4gSSBkb3dubG9hZGVkIEZlZG9y
YS1DaW5uYW1vbi1MaXZlLXg4Nl82NC0zNS0xLjIKPj4+IFN1cGVyK0FsdCtTIGRpZCBub3Qgc3Rh
cnQgT3JjYSwgc28gSSBwcmVzc2VkIGFsdCtGMiBhbmQgdHlwZWQgb3JjYSBhbmQgaGl0IGVudGVy
LCBidXQgZ290IG5vdGhpbmcuCj4+PiBTbyBJIHRoZW4gcHJlc3NlZCBhbHQrY3RybCtUIGFuZCB0
eXBlZCBvcmNhIGluIHRoZSB0ZXJtaW5hbC4gSSB1c2VkIG15IHBob25lIHRvIHJlYWQgdGhlIHNj
cmVlbiB0byBnZXQgb3JjYSBjb21tYW5kIG5vdCBmb3VuZC4KPj4+IFdoYXRzIGdvaW5nIG9uPwo+
Pj4gVGhhbmtzLAo+Pj4gUm9iCj4+PiAKPj4+IAo+Pj4gX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KPj4+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+Pj4g
QmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+Pj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFp
bG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo+Pj4gCj4+PiAKPj4gCj4+IF9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4+IEJsaW51eC1saXN0IG1haWxpbmcg
bGlzdAo+PiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQu
Y29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKPj4gCj4gCj4gCj4gX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBCbGludXgtbGlzdCBtYWlsaW5n
IGxpc3QKPiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5j
b20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAoKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkJsaW51eC1saXN0IG1haWxpbmcgbGlzdApCbGludXgt
bGlzdEByZWRoYXQuY29tCmh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGlu
Zm8vYmxpbnV4LWxpc3Q=

