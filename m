Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id AB28468342D
	for <lists+blinux-list@lfdr.de>; Tue, 31 Jan 2023 18:45:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1675187105;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=f+uYNoQpwaLlT9mcPbvWsW5NStkvsUz7QM77BUkYUmc=;
	b=LclAO714LhHWVMk1RS+5trntM6uKcqCBCj8QBNYrtVj3vgsFn+owJRl91a/1Phehe8S01Q
	GkogkOAtY2J2owhVmmKsFMKszLOG/brnioxL+T7HgeFjk0tytXo6t5jqJ9brLF/1xc3V0S
	Z9OCMWblR+4eEECwzZnbBLyvbhubDXA=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-271-YoBrleQlM6qnzYHbeC3LbA-1; Tue, 31 Jan 2023 12:45:03 -0500
X-MC-Unique: YoBrleQlM6qnzYHbeC3LbA-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com [10.11.54.6])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 5A2F9877CA4;
	Tue, 31 Jan 2023 17:45:01 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id B4C172166B33;
	Tue, 31 Jan 2023 17:44:58 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 07C7819465A0;
	Tue, 31 Jan 2023 17:44:58 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Tue, 31 Jan 2023 12:44:42 -0500
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: fenrir installation
In-Reply-To: <mailman.3015.1675186081.8175.blinux-list@redhat.com>
References: <mailman.2734.1675183128.8173.blinux-list@redhat.com>
 <mailman.3015.1675186081.8175.blinux-list@redhat.com>
MIME-Version: 1.0
Message-ID: <mailman.3182.1675187097.8170.blinux-list@redhat.com>
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
Errors-To: blinux-list-bounces@redhat.com
Sender: "Blinux-list" <blinux-list-bounces@redhat.com>
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.6
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gZmVkb3JhLCBwaXAzIGluc3RhbGwgZmVucmlyIHdvdWxkIHN0YXJ0IGZlbnJpciBpbnN0YWxs
IHByb2Nlc3MuClRoZW4gc3lzdGVtY3RsIGVuYWJsZSBmZW5yaXIgd291bGQgYmUgbmVlZGVkLiB0
aGVuIHJlYm9vdC4KSSBoYXZlbid0IGRvbmUgdGhpcyBvbiBmZWRvcmEgc28gY2FuJ3Qgc2F5IGl0
IHdpbGwgd29yay4KCgoKSnVkZSA8amRhc2hpZWwgYXQgcGFuaXggZG90IGNvbT4gIlRoZXJlIGFy
ZSBmb3VyIGJveGVzIHRvIGJlIHVzZWQgaW4KZGVmZW5zZSBvZiBsaWJlcnR5Ogogc29hcCwgYmFs
bG90LCBqdXJ5LCBhbmQgYW1tby4gUGxlYXNlIHVzZSBpbiB0aGF0IG9yZGVyLiIKLUVkIEhvd2Rl
cnNoZWx0IChBdXRob3IsIDE5NDApCgouCgpPbiBUdWUsIDMxIEphbiAyMDIzLCBMaW51eCBmb3Ig
YmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIHdyb3RlOgoKPiBObyBwYWNrYWdlIGlzIHByb3ZpZGVk
IGZvciBmZWRvcmEgYXQgdGltZSBvZiB3cml0aW5nLgo+Cj4gRm9yIFVidW50dSwganVzdCB0eXBl
IGFzIHJvb3Qgb3IgdXNpbmcgc3VkbzoKPiBhcHQgaW5zdGFsbCBmZW5yaXIuCj4gVGhlbiBzb21l
IGNvbmZpZ3VyYXRpb24gd2lsbCBiZSBuZWVkZWQuCj4KPiBDaGVlcnMsCj4gRGlkaWVyCj4gLS0K
PiBEaWRpZXIgU3BhaWVyCj4gZGlkaWVyYXRzbGludGRvdGZyCj4KPiBMZSAzMS8wMS8yMDIzID8g
MTY6NDksIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gYSA/Y3JpdMKgOgo+ID4g
SSBoYXZlIGEgbWFjaGluZSB3aXRoIGZlZG9yYSwgYW5kIGFuIGV4dGVybmFsIGRyaXZlIHdpdGgg
dWJ1bnR1Lgo+ID4gSSB3b3VsZCBsaWtlIHRvIGluc3RhbGwgZmVucmlyIHNjcmVlbi1yZWFkZXIg
b24gYm90aCBzeXN0ZW1zLCBhbmQgd291bGQgd2VsY29tZSBhbnkgaW5mb3JtYXRpb24gb24gZG9p
bmcgdGhhdC4KPgo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+
IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QK
PgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQmxpbnV4
LWxpc3QgbWFpbGluZyBsaXN0CkJsaW51eC1saXN0QHJlZGhhdC5jb20KaHR0cHM6Ly9saXN0bWFu
LnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo=

