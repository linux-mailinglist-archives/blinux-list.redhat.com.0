Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EBC269395C
	for <lists+blinux-list@lfdr.de>; Sun, 12 Feb 2023 19:31:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1676226683;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=l/9LFdJlmomkxdnvUmOXJc4LayBnrz7b5Sztoe1GTgg=;
	b=VvgN8pY3QY7jMVTVRKeUf8liVJJzH87loiYzacYUbO45vnl99VqCWATEO1oauoauAPzKOP
	5zPlkHMNEsd0RQ5uzmvjeaxIrE15gsW5ZLK+FZt8dI0hT6qtvl64tsBl3LoDQlL59bjG1j
	eIppKf8RG+cQCEYUOkNiZbeNS076VtI=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-397-ZadYMJX8OEu3fLNFJB_ZdQ-1; Sun, 12 Feb 2023 13:31:19 -0500
X-MC-Unique: ZadYMJX8OEu3fLNFJB_ZdQ-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com [10.11.54.6])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 2F717101A521;
	Sun, 12 Feb 2023 18:31:17 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id DA1002166B26;
	Sun, 12 Feb 2023 18:31:10 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 2D0511946595;
	Sun, 12 Feb 2023 18:31:10 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Mime-Version: 1.0 (1.0)
Subject: Re: Voxin
Date: Sun, 12 Feb 2023 13:30:52 -0500
References: <mailman.52.1676154461.1039593.blinux-list@redhat.com>
In-Reply-To: <mailman.52.1676154461.1039593.blinux-list@redhat.com>
To: blinux-list@redhat.com
Message-ID: <mailman.98.1676226669.1039590.blinux-list@redhat.com>
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

SG93IGRvIEkgaW5zdGFsbCB0aGUgdm9jYWxpemVyIHZvaWNlcwoKNzMsCkRhcnJlbiBUb21ibGlu
IEtDOUpKSgoKPiBPbiBGZWIgMTEsIDIwMjMsIGF0IDU6MjcgUE0sIExpbnV4IGZvciBibGluZCBn
ZW5lcmFsIGRpc2N1c3Npb24gPGJsaW51eC1saXN0QHJlZGhhdC5jb20+IHdyb3RlOgo+IAo+IO+7
v0hpLAo+IAo+IGluc3RydWN0aW9ucyBoZXJlOgo+IGh0dHBzOi8vb3JhbHV4Lm9yZy9pbmRleC5w
aHA/bXlsYW5nPWVuCj4gCj4gQ2hlZXJzLAo+IERpZGllcgo+IC0tCj4gRGlkaWVyIFNwYWllcgo+
IGRpZGllcmF0c2xpbnRkb3Rmcgo+IAo+PiBMZSAxMS8wMi8yMDIzIMOgIDIyOjQ0LCBMaW51eCBm
b3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIGEgw6ljcml0IDoKPj4gSGkgSSB3YXMgd29uZGVy
aW5nIGlmIGFueW9uZSBjb3VsZCBnaXZlIG1lIHNvbWUgc3RlcHMgdG8gaW5zdGFsbCB0aGlzIEni
gJl2ZSB0cmllZCBpdCBhbmQgSSBjYW7igJl0IGZpZ3VyZSBpdCBvdXQgdGhhbmtzIAo+PiAKPj4g
NzMsCj4+IERhcnJlbiBUb21ibGluIEtDOUpKSgo+PiAKPj4gX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KPj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4+
IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFp
bG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo+IAo+IF9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4gQmxpbnV4
LWxpc3RAcmVkaGF0LmNvbQo+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlz
dGluZm8vYmxpbnV4LWxpc3QKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkJsaW51eC1saXN0IG1haWxpbmcgbGlzdApCbGludXgtbGlzdEByZWRoYXQuY29t
Cmh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QK

