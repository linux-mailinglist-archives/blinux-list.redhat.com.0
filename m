Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id 61AE23CFF04
	for <lists+blinux-list@lfdr.de>; Tue, 20 Jul 2021 18:16:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1626797764;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=DlgCxxq8ADSf39xVqucK0KGfZ7CLULPSHr7Ta0NTEO4=;
	b=K8bK6BNHBObpXxFcRe5K5WQIuEZFXp/7dLwgRBpx1UXZG9r2OP8oqHpVvuLLodY1PWcJc+
	dbvNuwsQbDuPVC5WmeB1suQZD8gDBNK709X8GvaNf8vqLmZzknDeRL3G6tIInidR1RhlOM
	iszgNb4qCM7WSKQP834/oiqkKbESYl8=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-462-rC9vvnXoPqaEcdFCL-2Weg-1; Tue, 20 Jul 2021 12:16:00 -0400
X-MC-Unique: rC9vvnXoPqaEcdFCL-2Weg-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 6FFE28018A7;
	Tue, 20 Jul 2021 16:15:55 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id EE88010016F8;
	Tue, 20 Jul 2021 16:15:53 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 268371809C99;
	Tue, 20 Jul 2021 16:15:52 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 16KGFjbr014586 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 20 Jul 2021 12:15:45 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 1780E2024CDA; Tue, 20 Jul 2021 16:15:45 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 117EF20292BF
	for <blinux-list@redhat.com>; Tue, 20 Jul 2021 16:15:41 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 396C089C7DB
	for <blinux-list@redhat.com>; Tue, 20 Jul 2021 16:15:41 +0000 (UTC)
Received: from darkstar.slint.fr (darkstar.slint.fr [172.105.89.79]) by
	relay.mimecast.com with ESMTP id us-mta-108-Ib0nmhxNPF6tMm4ZihBZKw-1;
	Tue, 20 Jul 2021 12:15:38 -0400
X-MC-Unique: Ib0nmhxNPF6tMm4ZihBZKw-1
Received: from ici.slint.fr (sfa89-1-78-208-157-71.fbx.proxad.net
	[78.208.157.71])
	by darkstar.slint.fr (Postfix) with ESMTPSA id B9690A38F3
	for <blinux-list@redhat.com>; Tue, 20 Jul 2021 16:15:36 +0200 (CEST)
Subject: Re: changing the keymap in fluxbox on Slint
To: blinux-list@redhat.com
References: <c1411831-1b3f-9bfc-6e1e-156b648864ff@gmail.com>
Message-ID: <2a956027-104d-5f6a-c3e7-08824785b7f5@slint.fr>
Date: Tue, 20 Jul 2021 18:15:24 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
	Thunderbird/78.12.0
MIME-Version: 1.0
In-Reply-To: <c1411831-1b3f-9bfc-6e1e-156b648864ff@gmail.com>
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
	lists01.pubmisc.prod.ext.phx2.redhat.com id 16KGFjbr014586
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

SGkgQnJhbmR0LAoKSXQgY291bGQgYmUgYW4gaXNzdWUgd2l0aCB0aGUgZmlsZSAvdXNyL3NoYXJl
L3NhbGl4dG9vbHMva2V5bWFwcyBsZWFkaW5nIAp0byB3cml0ZSBpbiAvZXRjL1gxMS94b3JnLmNv
bmYuZC8xMC1rZXltYXAuY29uZgoKT3B0aW9uICAgICAgICAgICAgICAgICAgICAgICAgICAiWGti
TGF5b3V0IiAiZHZvcmFrIgppbnN0ZWFkIG9mOgpPcHRpb24gICAgICAgICAgICAgICAgICAgICAg
ICAgICJYa2JMYXlvdXQiICJkdm9yYWstbCIKCndoZW4gcnVubmluZyBrZXlib2FyZHNldHVwIG9y
IGd0a2tleWJvYXJkc2V0dXAuCgpQbGVhc2UgZWRpdCB0aGlzIDEwLWtleW1hcC5jb25mIGFzIHJv
b3QsIHJlcGxhY2luZyBkdm9yYWsgYnkgZHZvcmFrLWwsIApyZXN0YXJ0IGEgd2luZG93IG1hbmFn
ZXIuIERvZXMgaXQgbm93IHdvcms/CgpCZXN0IHJlZ2FyZHMsCkRpZGllcgotLQpEaWRpZXIgU3Bh
aWVyClNsaW50IG1haW50YWluZXIKZGlkaWVyYXRzbGludGRvdGZyCgpMZSAyMC8wNy8yMDIxIMOg
IDE3OjI2LCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIGEgw6ljcml0wqA6Cj4g
SGkgYWxsLAo+IAo+IAo+IEkgaW5zdGFsbGVkIFNsaW50IGluIGEgVk0sIGJ5IGRlZmF1bHQgcnVu
bmluZyB0aGUgTWF0ZSBkZXNrdG9wLCB3aGljaCBJIAo+IGNvdWxkIGVhc2lseSBmaXgsIGJ1dCB3
aGVuIEkgc3RhcnQgRmx1eEJveCwgbm90IHNvIG11Y2guCj4gCj4gCj4gVGhlIGlzc3VlIGlzIGFz
IGZvbGxvd3M6IEluIHRoZSBTbGludCBpbnN0YWxsIEkgY2hvc2UgRHZvcmFrIC1MIAo+IChMZWZ0
LUhhbmRlZCBEdm9yYWspIGFzIG15IGtleWJvYXJkLiBIb3dldmVyLCB3aGVuIEkgcmFuICJzdGFy
dHgiIHRvIGdldCAKPiBpbiB0byBteSBkZXNrdG9wLCBJIHdhcyBwcmVzZW50ZWQgd2l0aCB0aGUg
RHZvcmFrIGtleWJvYXJkIGxheW91dCwgCj4gd2hpY2gsIGFzIGEgb25lLWhhbmRlZCBsZWZ0eSwg
SSBvYnZpb3VzbHkgZG8gbm90IGtub3cuCj4gCj4gCj4gSSBmaXhlZCB0aGlzIHZlcnkgZWFzaWx5
IGluIHRoZSBNYXRlIGRlc2t0b3AsIGJ1dCBoYXZlIG5vIGlkZWEgaG93IHRvIGRvIAo+IHNvIGlu
IHRoZSBXaW5kb3cgTWFuYWdlcnMsIEZsdXhCb3gsIEJsYWNrQm94LCBldGMuCj4gCj4gCj4gSWYg
YW55b25lIGNhbiwgcGxlYXNlIGhlbHAgbWUgd2l0aCB0aGlzIGlzc3VlPyBJIHdvdWxkIHJlYWxs
eSBhcHByZWNpYXRlIAo+IGl0Lgo+IAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkJsaW51eC1saXN0IG1haWxpbmcgbGlzdApCbGludXgtbGlzdEByZWRo
YXQuY29tCmh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4
LWxpc3Q=

