Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 7B3962F44A5
	for <lists+blinux-list@lfdr.de>; Wed, 13 Jan 2021 07:48:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1610520482;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=5AzeKbf8NoYL6gXXNG8K37723z/CoiOUs8MTheIqVEs=;
	b=NOhvzkJp1Z/umTbOoJrD2+iKqN7wPCtiFnho5wxzXWTSzYwGXCm75DaewgFnFGSYw42v/f
	OdUSG6n8X/BWvEp/ppwLVWettwWE3OQshrOYHUeYll1Of+GtTFSqvvR/3ZuGzB4FA8cB/0
	yA2tiqCK9DU5Vt9zwSqSNh0HashvS4g=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-191-m-5IvaWaMJGw4cnT-fP_ig-1; Wed, 13 Jan 2021 01:48:00 -0500
X-MC-Unique: m-5IvaWaMJGw4cnT-fP_ig-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 0574E180A0A0;
	Wed, 13 Jan 2021 06:47:55 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 8C5221A26A;
	Wed, 13 Jan 2021 06:47:54 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 7EB7E4A7C6;
	Wed, 13 Jan 2021 06:47:53 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 10D6lnTm030831 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 13 Jan 2021 01:47:49 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 03C5F1009B8F; Wed, 13 Jan 2021 06:47:49 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id F39D91102E07
	for <blinux-list@redhat.com>; Wed, 13 Jan 2021 06:47:46 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 70D6F101A53F
	for <blinux-list@redhat.com>; Wed, 13 Jan 2021 06:47:46 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-254-ydwSTLhmPo62z2g5CmCX1Q-1; Wed, 13 Jan 2021 01:47:43 -0500
X-MC-Unique: ydwSTLhmPo62z2g5CmCX1Q-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4DFygM3w0qzSK5
	for <blinux-list@redhat.com>; Wed, 13 Jan 2021 01:47:43 -0500 (EST)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4DFygM4C9tzcbc; Wed, 13 Jan 2021 01:47:43 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4DFygM48zSzcbV
	for <blinux-list@redhat.com>; Wed, 13 Jan 2021 01:47:43 -0500 (EST)
Date: Wed, 13 Jan 2021 01:47:43 -0500
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Fwd: Does anyone on here read code in braille?
In-Reply-To: <A03EAED5-689D-45DB-892F-7DBDCBE70CA3@yahoo.com>
Message-ID: <alpine.NEB.2.23.451.2101130145520.19038@panix1.panix.com>
References: <198C0090-F028-4CA8-BE77-B90F609E3433@ivytech.edu>
	<A03EAED5-689D-45DB-892F-7DBDCBE70CA3@yahoo.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 10D6lnTm030831
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

WWVzLCBJIHJlYWQgY29kZSBpbiBicmFpbGxlLiAgSSB1c2UgYnJhaWxsZSBwYXBlciBhcyBhIGRp
c3BsYXkgc2luY2UgCmhhdmVuJ3QgaGFkIHRoZSBmdW5kcyBmb3IgdGhlIGVsZWN0cm9uaWMgdmVy
c2lvbnMuICBXaGVuIEkgcmVhZCwgSSByZWFkIApvbmUgbGluZSBhdCBhIHRpbWUuCgoKCk9uIFdl
ZCwgMTMgSmFuIDIwMjEsIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gd3JvdGU6
Cgo+Cj4KPiBBc2hsZXkKPgo+IEJlZ2luIGZvcndhcmRlZCBtZXNzYWdlOgo+Cj4+IEZyb206IEFz
aGxleSBCcmVnZXIgPGFicmVnZXJAaXZ5dGVjaC5lZHU+Cj4+IERhdGU6IEphbnVhcnkgMTMsIDIw
MjEgYXQgMTI6MzU6MTkgQU0gQ1NUCj4+IFRvOiBBc2hsZXkgQnJlZ2VyIDxhc2hicmVnZXJAeWFo
b28uY29tPgo+PiBTdWJqZWN0OiBGd2Q6IERvZXMgYW55b25lIG9uIGhlcmUgcmVhZCBjb2RlIGlu
IGJyYWlsbGU/Cj4+IAo+PiDvu78KPj4gCj4+IEFzaGxleQo+PiAKPj4gQmVnaW4gZm9yd2FyZGVk
IG1lc3NhZ2U6Cj4+IAo+Pj4gRnJvbTogQXNobGV5IEJyZWdlciA8YWJyZWdlckBpdnl0ZWNoLmVk
dT4KPj4+IERhdGU6IEphbnVhcnkgMTMsIDIwMjEgYXQgMTI6MjU6MTEgQU0gQ1NUCj4+PiBUbzog
TGludXggPGJsaW51eC1saXN0QHJlZGhhdC5jb20+Cj4+PiBTdWJqZWN0OiBEb2VzIGFueW9uZSBv
biBoZXJlIHJlYWQgY29kZSBpbiBicmFpbGxlPwo+Pj4gCj4+PiDvu79IaSBndXlzIEkgd2FzIHdv
bmRlcmluZyBpZiBhbnlvbmUgb24gaGVyZSByZWFkcyBjb2RlIGluIGJyYWlsbGU/IElmIHNvIGRv
IHlvdSByZWFkIGl0IGxpbmUgYnkgbGluZSBvciBhcmUgeW91IGFibGUgdG8gcmVhZCBtdWx0aXBs
ZSBsaW5lcyBhdCBvbmNlPyBBbmQgd2hhdCBkaXNwbGF5cyBkbyB5b3UgdXNlIGZvciByZWFkaW5n
IGNvZGU/Cj4+PiAKPj4+IAo+Pj4gQXNobGV5Cj4gX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KPiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPiBCbGludXgt
bGlzdEByZWRoYXQuY29tCj4gaHR0cHM6Ly93d3cucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZv
L2JsaW51eC1saXN0CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0CkJsaW51eC1saXN0QHJlZGhhdC5jb20KaHR0
cHM6Ly93d3cucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0

