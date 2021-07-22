Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id 8FD0C3D2DE5
	for <lists+blinux-list@lfdr.de>; Thu, 22 Jul 2021 22:47:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1626986832;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=evYlll5auDHmkEyWC5L7kq6ksAgAtLrFC1oCrQHVwRs=;
	b=bnoaEBmxsB5x7OvpbGdCcnUWrYolYaqbiTB5dfSZFeYFPAVfKfW8YDDIT82Rl52uhlb8ql
	lUXFnrsmNJYNtveCknqZyczHhPvZpGyhsSTmFCirpeHKLVLpi0jvhFgl4fXXVLRdDtvoz6
	pqHjBpdFBIIp2HWcipfuHVSlG47XnEY=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-294-7EjJPSIsMUav3sXtWeEhNQ-1; Thu, 22 Jul 2021 16:47:11 -0400
X-MC-Unique: 7EjJPSIsMUav3sXtWeEhNQ-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 4440C10086C4;
	Thu, 22 Jul 2021 20:47:07 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id A0B265DA2D;
	Thu, 22 Jul 2021 20:47:05 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id C9EDF4BB7C;
	Thu, 22 Jul 2021 20:47:02 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 16MKks7v018975 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 22 Jul 2021 16:46:54 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 773EB10545E1; Thu, 22 Jul 2021 20:46:54 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 7331C101F0A5
	for <blinux-list@redhat.com>; Thu, 22 Jul 2021 20:46:51 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 5AC87802700
	for <blinux-list@redhat.com>; Thu, 22 Jul 2021 20:46:51 +0000 (UTC)
Received: from darkstar.slint.fr (darkstar.slint.fr [172.105.89.79]) by
	relay.mimecast.com with ESMTP id us-mta-193-oO38d7pPN8iYbxkh1JrUYQ-1;
	Thu, 22 Jul 2021 16:46:46 -0400
X-MC-Unique: oO38d7pPN8iYbxkh1JrUYQ-1
Received: from ici.slint.fr (sfa89-1-78-208-157-71.fbx.proxad.net
	[78.208.157.71])
	by darkstar.slint.fr (Postfix) with ESMTPSA id B350AA403D
	for <blinux-list@redhat.com>; Thu, 22 Jul 2021 20:46:44 +0200 (CEST)
Subject: Re: A question on speakup
To: blinux-list@redhat.com
References: <ac70ffcc-fbf1-626e-9348-559c650efce7@gmail.com>
	<5e378258-7faf-6589-1ab2-59cd30ce33fa@slint.fr>
	<Pine.LNX.4.64.2107221343071.1324567@server2.shellworld.net>
Message-ID: <87270eeb-d2f2-dd94-37e5-2114e937c554@slint.fr>
Date: Thu, 22 Jul 2021 22:46:44 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
	Thunderbird/78.12.0
MIME-Version: 1.0
In-Reply-To: <Pine.LNX.4.64.2107221343071.1324567@server2.shellworld.net>
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
	lists01.pubmisc.prod.ext.phx2.redhat.com id 16MKks7v018975
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
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

SGkgQnJhbmR0LAoKaW4gdGhpcyBjYXNlIHdob21ldmVyIGlzIGFsc28gbmFtZWQgRGlkaWVyLCBh
bmQgYWxzbyBncmFuZC1mYXRoZXIgKG9ubHkgCmJ5IEx1Y2FzCnNvIGZhcikuCgpQcm92aWRpbmcg
dGhlIGFjdHVhbCBuYW1lIG9mIHRoZSBzeW50aGVzaXplciBpcyBub3QgZWFzeSBhcyBJIGFtIG5v
dCAKYXdhcmUgb2YKYW55IHVwIHRvIGRhdGUgYW5kIGNvbXBsZXRlICBsaXN0IG9mIHN5bnRoZXNp
emVycyB0aGF0IGNhbiB1c2UgYSBnaXZlbiAKZHJpdmVyLgpUaGlzIGRvY3VtZW50OgpodHRwOi8v
d3d3LmxpbnV4LXNwZWFrdXAub3JnL3NwZWFrdXAuaHRtbApqdXN0IHByb3ZpZGVzIGEgZ2VuZXJp
YyBkZXNjcmlwdGlvbiBmb3IgZWFjaCBkcml2ZXIsIG5vdCBhbGwgbW9kZWxzIApzdXBwb3J0ZWQs
CmFuZCBpdCBpcyB2ZXJ5IG91dGRhdGVkIGFzIGlzIGluIHlvdXIgU2xpbnQgdGhlIGZpbGU6Ci91
c3Ivc3JjL2xpbnV4LTUuMTIuMTEvRG9jdW1lbnRhdGlvbi9hZG1pbi1ndWlkZS9zcGtndWlkZS50
eHQKCkFsc28gdGhlIGJyYW5kIGFuZCBtb2RlbCBuYW1lIGFyZSBub3QgZXhwb3NlZCBpbiB0aGUg
c3lzZnMgQUJJOgpodHRwczovL3d3dy5rZXJuZWwub3JnL2RvYy9Eb2N1bWVudGF0aW9uL0FCSS9z
dGFibGUvc3lzZnMtZHJpdmVyLXNwZWFrdXAKClNvIGFsbCBJIGNvdWxkIGRvIGlzIGRpc3BsYXkg
Zm9yIGVhY2ggZHJpdmVyIGl0cyBkZXNjcmlwdGlvbi4KRm9yIGluc3RhbmNlIHRoaXMgY29tbWFu
ZCB0eXBlZCBhcyByb290Ogptb2RpbmZvIHNwZWFrdXBfZGVjdGxrfHNlZCAtbiAgIi9eZGVzY3Jp
cHRpb24vcy8uKjogKi8vcCIKZ2l2ZXMgdGhpcyBvdXRwdXQ6ClNwZWFrdXAgc3VwcG9ydCBmb3Ig
REVDdGFsayBFeHByZXNzIHN5bnRoZXNpemVycwoKV291bGQgdGhpcyBiZSB1c2VmdWw/CgpDaGVl
cnMsCkRpZGllcgotLQpEaWRpZXIgU3BhaWVyCgpMZSAyMi8wNy8yMDIxIMOgIDE5OjQ0LCBMaW51
eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIGEgw6ljcml0wqA6Cj4gSnVzdCBhIHN1Z2dl
c3Rpb24sIGZvciB3aG9tZXZlciB3cm90ZSB0aGlzIGRvY3VtZW50YXRpb24/Cj4gUHJvdmlkaW5n
IHRoZSBhY3R1YWwgbmFtZSBvZiB0aGUgaGFyZHdhcmUgc3ludGhlc2l6ZXIgc3VwcG9ydGVkIG1p
Z2h0IGJlIAo+IHdpc2UuwqAgc29tZSBvZiB0aG9zZSBsaXN0ZWQgY291bGQgbWVhbiBtb3JlIHRo
YW4gb25lIHRoaW5nLgo+IAo+IAo+IAo+IE9uIFRodSwgMjIgSnVsIDIwMjEsIExpbnV4IGZvciBi
bGluZCBnZW5lcmFsIGRpc2N1c3Npb24gd3JvdGU6Cj4gCj4+IEhpIEJyYW5kdCwKPj4gZm9yIFNs
aW50Ogo+Pgo+PiBodHRwczovL3NsaW50LmZyL2RvYy9IYW5kQm9vay5odG1sI19jb25maWd1cmVf
YV9jb25zb2xlX3NjcmVlbl9yZWFkZXIKPj4KPj4gSSBkb24ndCBrbm93IGEgc3BlY2lmaWMgc29m
dHdhcmUgc3ludGhlc2l6ZXIgZm9yIERlY3RhbGssIGJ1dCBqdXN0IAo+PiB0eXBlIGFzIHJvb3Q6
Cj4+IHNwZWFrLXdpdGgKPj4KPj4gVG8ga25vdyBtb3JlOgo+PiBodHRwczovL3NsaW50LmZyL2Rv
Yy9IYW5kQm9vay5odG1sI19jaG9vc2VfYV9jb25zb2xlX3NjcmVlbl9yZWFkZXIKPj4KPj4gQ2hl
ZXJzLAo+PiBEaWRpZXIKPj4gLS0gCj4+IERpZGllciBTcGFpZXIKPj4KPj4gTGUgMjIvMDcvMjAy
MSDDoCAxMjowOSwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiBhIMOpY3JpdMKg
Ogo+Pj4gwqBIaSBhbGwsCj4+Pgo+Pj4KPj4+IMKgSSB1c2UgdG8ga25vdyBob3cgdG8gc3RvcmUg
YW5kIHRoZW4gcmVzdG9yZSBteSBzcGVha3VwIHNldHRpbmdzLCAKPj4+IGhvd2V2ZXIsCj4+PiDC
oHRvIG15IHV0dGVyIHNoYW1lLCBJIGZvcmdvdCBob3cgdG8gZG8gdGhpcy4KPj4+Cj4+Pgo+Pj4g
wqBJIGFsc28gcmVhZCBzb21ld2hlcmUgdGhhdCB0aGVyZSBpcyBhIHNvZnR3YXJlIERlY3RhbGsg
c3ludGhlc2l6ZXIKPj4+IMKgYXZhaWxhYmxlLiBJZiBhbnlvbmUga25vd3MgaG93IHRvIGluc3Rh
bGwgYW5kIGNvbmZpZ3VyZSB0aGlzIHRvIHdvcmsgCj4+PiB3aXRoCj4+PiDCoHNwZWFrdXAsIGl0
IHdvdWxkIHJlYWxseSBiZSBhcHByZWNpYXRlZC4KPj4+Cj4+Cj4+Cj4+IF9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4+IEJsaW51eC1saXN0IG1haWxpbmcg
bGlzdAo+PiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQu
Y29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKPj4KPiAKPiBfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IEJsaW51eC1saXN0IG1haWxpbmcgbGlz
dAo+IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9t
YWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cj4gCgoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0CkJsaW51eC1s
aXN0QHJlZGhhdC5jb20KaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5m
by9ibGludXgtbGlzdA==

