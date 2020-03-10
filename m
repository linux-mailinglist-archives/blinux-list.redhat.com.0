Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	by mail.lfdr.de (Postfix) with ESMTP id 12BE317F5F1
	for <lists+blinux-list@lfdr.de>; Tue, 10 Mar 2020 12:16:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1583838972;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=8SATiv/7WcbsqcEQ05U96Z7jDg5CN8bOGMCaozyDbWQ=;
	b=IgOsJhtwxddYGKCSPC3OxFYDmtkH6OxV2zaW8VJTrn3ub/5xLQKs0pzWNpjIE5Or4DY+Od
	e0KtE7VboHiFCNrpl9HkYeuCjFfQ+K4rhuopgFHBvr+Uysf2h4kHuX1SvMwB9GsfWTe8kx
	SmzitRal7/FQt3KpLNzYeENewenfWjU=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-124-1BdzqRadPJWQZW_3AdWE2A-1; Tue, 10 Mar 2020 07:16:10 -0400
X-MC-Unique: 1BdzqRadPJWQZW_3AdWE2A-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id A0A7B8017CC;
	Tue, 10 Mar 2020 11:16:06 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id ECDA410013A1;
	Tue, 10 Mar 2020 11:16:05 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 2C1C586A0A;
	Tue, 10 Mar 2020 11:16:04 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 02ABFxjf023096 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 10 Mar 2020 07:15:59 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 1C26C10AF414; Tue, 10 Mar 2020 11:15:59 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 1607210AF417
	for <blinux-list@redhat.com>; Tue, 10 Mar 2020 11:15:57 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id E45DE101A55A
	for <blinux-list@redhat.com>; Tue, 10 Mar 2020 11:15:56 +0000 (UTC)
Received: from mail-yw1-f50.google.com (mail-yw1-f50.google.com
	[209.85.161.50]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-235-BuezysWVMEmfRQsc4oYOww-1; Tue, 10 Mar 2020 07:15:54 -0400
X-MC-Unique: BuezysWVMEmfRQsc4oYOww-1
Received: by mail-yw1-f50.google.com with SMTP id t141so13191562ywc.11
	for <blinux-list@redhat.com>; Tue, 10 Mar 2020 04:15:54 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:content-transfer-encoding:mime-version
	:subject:date:references:to:in-reply-to:message-id;
	bh=lxkkoS0FsO4d0I5c33wqnMAGU0Ir5F+aBFwbuRgOv5I=;
	b=QnFOJ0/fjTvQik5M710nit57NVUVLK5RyMs6PF/9Wu86+JyyonJW31FE1D3LEQdYxY
	232a50+WJ4HhODUDhXjZg6z3k45eGVsK138PR1pPVQYcTInM6Omp9OsJfOwK0a7gqEcw
	mLkwS04KwUb21fmrFXRrzYhhvVn0eIdnOqvBZIufsEOkLGIW5w+k+ZBK7g8voHDyzr39
	UcPN/x75xKsJOK0amKDQ0Pd+a337OiC+azq227MAy68LAag6SJtcIKHHlsdQY1PsfzJ4
	9+QIHh9mMH4TFlmVrwxnjSj7tVteQLl8Kfne4hHl//xlGJ87OSf7ORzIOf724Pe9lkzV
	Xdyw==
X-Gm-Message-State: ANhLgQ1t8aZtm9HU0dcFypmoFKXpgwLKcPLYSdqUF4VgE+z90SBtuwoa
	GM0DnNWKrnP+7BqqCDXzV9r+9aFmVUM=
X-Google-Smtp-Source: ADFU+vsLS60krF3Bc4Hb2KmqpgA6Z0Fx7NjNKsjW7DAdgaglLrEfy65qrZV/tU7vJz2tHzdXmZ7Dnw==
X-Received: by 2002:a25:5e03:: with SMTP id s3mr22605994ybb.203.1583838953702; 
	Tue, 10 Mar 2020 04:15:53 -0700 (PDT)
Received: from [192.168.44.12] ([24.197.47.105])
	by smtp.gmail.com with ESMTPSA id
	i74sm8695398ywa.91.2020.03.10.04.15.52 for <blinux-list@redhat.com>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 10 Mar 2020 04:15:53 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 13.0 \(3608.60.0.2.5\))
Subject: Re: orca master
Date: Tue, 10 Mar 2020 06:15:52 -0500
References: <2856df1a-69cb-0a03-d4f0-bf3051b2ab20@gmail.com>
	<ccc1f11e-f015-f66f-c897-e6bbf9c0afc3@crosslink.net>
	<CAPo=n-9HbU7zg09v=fZKLkaq0Tu3M+CQi4FQgKoLN+feKJeiyg@mail.gmail.com>
	<2C30B027-FF78-4791-A129-7BA6865373CB@gmail.com>
To: "blinux-list@redhat.com" <blinux-list@redhat.com>
In-Reply-To: <2C30B027-FF78-4791-A129-7BA6865373CB@gmail.com>
Message-Id: <C1701043-6638-4E5E-A384-00BFA441B79E@gmail.com>
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 02ABFxjf023096
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T3JjYSBtYXN0ZXIgdXN1YWxseSByZWZlcnMgdG8gdGhlIGxhdGVzdCBjb21taXRzIHRvIHRoZSBt
YXN0ZXIgYnJhbmNoIG9mIE9yY2HigJlzIEdpdGxhYiByZXBvc2l0b3J5LgoKPiBPbiBNYXIgMTAs
IDIwMjAsIGF0IDU6NTIgQU0sIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gPGJs
aW51eC1saXN0QHJlZGhhdC5jb20+IHdyb3RlOgo+IAo+IEkga25vdyB3aGF0IG9yY2EgaXMsIHRo
ZSBzY3JlZW4tcmVhZGluZyBwcm9ncmFtLgo+IFdoYXQgaXMgb3JjYSBtYXN0ZXIKPiAKPj4gT24g
TWFyIDEwLCAyMDIwLCBhdCAxMjozMiBBTSwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vz
c2lvbiA8YmxpbnV4LWxpc3RAcmVkaGF0LmNvbT4gd3JvdGU6Cj4+IAo+PiBUaGUgYmVzdCBQREYg
ZXhwZXJpYW5jZSBJIGtub3cgYWJvdXQgY3VycmVudGx5IGlzIGlmIHlvdSBydW4gT3JjYSBtYXN0
ZXIKPj4gd2l0aCB0aGUgbGF0ZXN0IHNuYXBzaG90IG9mIGNocm9taXVtIG9yIENocm9tZS4gVGhl
IGJ1aWx0aW4gUERGIHJlYWRlciBvZgo+PiBDaHJvbWl1bSBpcyB2ZXJ5IG5pY2UsIGl0IHBsYWNl
cyBldmVyeSBwYWdlIHVuZGVyIGEgZGlmZmVyZW50IGxhbmRtYXJrIHNvCj4+IHlvdSBjYW4gbmF2
aWdhdGUgYmV0d2VlbiB0aGVtIHdpdGggbSBhbmQgc2hpZnQrbS4gSXQgZXZlbiBzdXBwb3J0IGEg
ZmV3IFBERgo+PiB0YWdzIGJ5IGNvbnZlcnRpbmcgdGhlbSB0byB0aGVpciBIVE1MIGVxdWl2YWxl
bnRzLCBoZWFkaW5ncyBmb3IgZXhhbXBsZS4KPj4gCj4+IFJlZ2FyZHMsCj4+IAo+PiBSeW5oYXJk
dAo+PiAKPj4gT24gVHVlLCAxMCBNYXIgMjAyMCwgMDQ6MDcgTGludXggZm9yIGJsaW5kIGdlbmVy
YWwgZGlzY3Vzc2lvbiwgPAo+PiBibGludXgtbGlzdEByZWRoYXQuY29tPiB3cm90ZToKPj4gCj4+
PiBVYnVudHUgTWF0ZSBEZXNrdG9wIHNlZW1zIHRvIGhhdmUgQXRyaWwgRG9jdW1lbnQgVmlld2Vy
LiAgSWYgeW91IHByZXNzCj4+PiBGNyB0byB0dXJuIG9uIGNhcmV0IGJyb3dzaW5nIGl0IHNlZW1z
IHRvIGJlIHVzYWJsZSB3aXRoIHNvbWUgUERGIGZpbGVzLgo+Pj4gSSBoYXZlIG5vdCB1c2VkIGl0
IGV4dGVuc2l2ZWx5LiAgWW91IGNhbiBhbHNvIHByZXNzIGNvbnRyb2wtYSB0byBzZWxlY3QKPj4+
IHRoZSBlbnRpcmUgZG9jdW1lbnQgYW5kIHBhc3RlIGl0IGludG8gYW4gRWRpdG9yLgo+Pj4gCj4+
PiAKPj4+IAo+Pj4gT24gMy85LzIwMjAgNTozNiBQTSwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwg
ZGlzY3Vzc2lvbiB3cm90ZToKPj4+PiBIZWxsbywKPj4+PiAKPj4+PiAKPj4+PiBpcyB0aGVyZSBh
bnkgYWNjZXNzaWJsZSBwZGYgdmlld2VyIG9uIExpbnV4IHdoaWNoIGNhbiBiZSB1c2VkIHdpaHQK
Pj4+PiBPcmNhIHNjcmVlbiByZWFkZXI/Cj4+Pj4gCj4+Pj4gCj4+Pj4gRXZpbmNlIHNlZW1zIG5v
dCB0byBiZWxvbmcgdG8gdGhpcyBjYXRlZ29yeS4KPj4+PiAKPj4+PiAKPj4+PiBUaGFuayB5b3Ug
aW4gYWR2YW5jZSEKPj4+PiAKPj4+PiBWbGFkeXNsYXYKPj4+PiAKPj4+PiAKPj4+PiAKPj4+PiBf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+Pj4+IEJsaW51
eC1saXN0IG1haWxpbmcgbGlzdAo+Pj4+IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPj4+PiBodHRw
czovL3d3dy5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKPj4+PiAKPj4+
IAo+Pj4gCj4+PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
Xwo+Pj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4+PiBCbGludXgtbGlzdEByZWRoYXQuY29t
Cj4+PiBodHRwczovL3d3dy5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QK
Pj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPj4gQmxp
bnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4+IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPj4gaHR0cHM6
Ly93d3cucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cj4+IAo+IAo+IAo+
IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gQmxpbnV4
LWxpc3QgbWFpbGluZyBsaXN0Cj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+IGh0dHBzOi8vd3d3
LnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo+IAoKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkJsaW51eC1saXN0IG1haWxpbmcg
bGlzdApCbGludXgtbGlzdEByZWRoYXQuY29tCmh0dHBzOi8vd3d3LnJlZGhhdC5jb20vbWFpbG1h
bi9saXN0aW5mby9ibGludXgtbGlzdA==

