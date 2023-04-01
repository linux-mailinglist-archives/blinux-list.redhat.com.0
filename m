Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id ADC446D2FD1
	for <lists+blinux-list@lfdr.de>; Sat,  1 Apr 2023 13:09:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1680347367;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=PdNcRhvTUKaG7FFGrKWJjnU3KCEw4PWp+nLoWnA+Kk4=;
	b=E1HZQt9TU609F5ol9gx47lCxZqazgGaiu2q+Rn0cF8khRGPPVqmGdDY4Rs+/YlYlepWXrC
	k1BQlL22lG4tAGy71uBquxCBVPcAxkCQhqnYmppG/l2rzMWQuNmq3uXSJozsbDOBDEIDyF
	dSKyEoV8I2bvSqlJEYnSHB3CaXE/btE=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-640-RYKBbyOvPcGlfbES0odZSQ-1; Sat, 01 Apr 2023 07:09:24 -0400
X-MC-Unique: RYKBbyOvPcGlfbES0odZSQ-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com [10.11.54.5])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 2030F3C0F184;
	Sat,  1 Apr 2023 11:09:22 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 9C045440BC;
	Sat,  1 Apr 2023 11:09:18 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id C32A61946A45;
	Sat,  1 Apr 2023 11:09:17 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3731.600.2\))
Subject: Re: Orca not speaking on new Debian install.
In-Reply-To: <mailman.1920.1680294381.2676480.blinux-list@redhat.com>
Date: Sat, 1 Apr 2023 07:09:00 -0400
References: <mailman.1920.1680294381.2676480.blinux-list@redhat.com>
To: blinux-list@redhat.com
Message-ID: <mailman.40.1680347357.558775.blinux-list@redhat.com>
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://listman.redhat.com/mailman/options/blinux-list>,
 <mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <http://listman.redhat.com/archives/blinux-list/>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://listman.redhat.com/mailman/listinfo/blinux-list>,
 <mailto:blinux-list-request@redhat.com?subject=subscribe>
Reply-To: blinux-list@redhat.com
Cc: orca@freelists.org
Errors-To: blinux-list-bounces@redhat.com
Sender: "Blinux-list" <blinux-list-bounces@redhat.com>
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.5
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

Cgo+IE9uIE1hciAzMSwgMjAyMywgYXQgMTY6MjYsIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRp
c2N1c3Npb24gPGJsaW51eC1saXN0QHJlZGhhdC5jb20+IHdyb3RlOgo+IAo+IEkgdHJpZWQgcnVu
bmluZyB0aGUgc2NyaXB0IEkndmUgcHJldmlvdXNseSB1c2VkIGZvciBsYXVuY2hpbmcgYSBzdGFu
ZAo+IGFsb25lIEdVSSBhcHBsaWNhdGlvbiB3aXRoIE9yY2EsIHVzaW5nIEZpcmVmb3gtRVNSIDEw
MiB0byB0ZXN0Lgo+IEZpcmVmb3ggc3RhcnRzIGFzIGl0IGNyZWF0ZXMgYSBuZXcgRmlyZWZveCBw
cm9maWxlIGluIG15IGhvbWUKPiBkaXJlY3RvcnkgYW5kIGlzc3VpbmcgYSBjbG9zZSB3aW5kb3cg
a2V5Ym9hcmQgY29tbWFuZCBzcGl0cyBtZSBiYWNrIHRvCj4gdGhlIGNvbnNvbGUsIGJ1dCBpZiBv
cmNhIHN0YXJ0cywgaXQgZG9lc24ndCB0YWxrLgpIYXZlIHlvdSB0ZXN0ZWQgd2hldGhlciBTcGVl
Y2gtRGlzcGF0Y2hlciBpcyB3b3JraW5nIChlLmcuLCB3aXRoIHRoZSBTcGQtc2F5IGNvbW1hbmQp
PwpJcyBhdC1zcGkgcnVubmluZz8gTG9vayBmb3IgYXQtc3BpMi1yZWdpc3RyeWQgd2l0aCBwcmVw
PwpZb3Ugc2hvdWxkIGFsc28gY2hlY2sgd2hldGhlciBPcmNhIGlzIHJ1bm5pbmcuClRoZXNlIGlu
dmVzdGlnYXRpb25zIHNob3VsZCBuYXJyb3cgZG93biB0aGUgcHJvYmxlbS4gVGhlcmXigJlzIG5v
dGhpbmcgaW4gdGhlIGVycm9yIG1lc3NhZ2VzIHlvdSBwb3N0ZWQgdG8gc3VnZ2VzdCB0byBtZSB0
aGV5IGFyZSBtb3JlIHRoYW4gd2FybmluZ3Mgb3IgdGhhdCB0aGV5IGFyZSBPcmNhLXJlbGF0ZWQu
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpCbGludXgt
bGlzdCBtYWlsaW5nIGxpc3QKQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQpodHRwczovL2xpc3RtYW4u
cmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cg==

