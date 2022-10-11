Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 55E435FB493
	for <lists+blinux-list@lfdr.de>; Tue, 11 Oct 2022 16:29:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1665498591;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=qBSIfI4mSF/hZd1bwAFy201f5nJY0Q7VJTq2l4dmtTY=;
	b=ep7aHLKCcyHpISE+Y5WlK8LWmD0XfKTg8OddAsaooKxfeGUAEfacTMwQwP8oN2L7rNUk17
	ciUwV3mSf51eYF4L+143mDrZeAOz0Gid87Vs0GcxyIy4Zgr40XOJurwk1aEKxQIhbiL0QY
	dGlFrmCD6d7QeWahBzOEBq1STovr4k0=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-554-PH77Eb6zNGCRGtrLFCyESQ-1; Tue, 11 Oct 2022 10:29:48 -0400
X-MC-Unique: PH77Eb6zNGCRGtrLFCyESQ-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com [10.11.54.6])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id B6016382ECC8;
	Tue, 11 Oct 2022 14:29:46 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 931702166B26;
	Tue, 11 Oct 2022 14:29:46 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 456301946A48;
	Tue, 11 Oct 2022 14:29:46 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
X-Spam-Processed: mail.comproom.co.uk, Tue, 11 Oct 2022 15:27:56 +0100
 (not processed: message from trusted or authenticated source)
To: <blinux-list@redhat.com>
References: <mailman.7301.1665480524.6076.blinux-list@redhat.com>
 <mailman.6416.1665498310.6074.blinux-list@redhat.com>
In-Reply-To: <mailman.6416.1665498310.6074.blinux-list@redhat.com>
Subject: RE: New user question
Date: Tue, 11 Oct 2022 15:27:57 +0100
MIME-Version: 1.0
Thread-Index: AQJi87l/jbGBvpnvmwTZ5WGL+bfbrgHDLHzBrOb6UcA=
Message-ID: <mailman.6749.1665498585.6077.blinux-list@redhat.com>
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
Content-Language: en-gb
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGksCgpUaGFua3MgZm9yIHRoaXMuCgpTbyBkaWQgeW91IGluc3RhbGwgV2luZG93cyAxMCBQcm8g
b24gVnVsdHI/IEkgZG9uJ3Qga25vdyBpZiB5b3UgY2FuIGluc3RhbGwgeW91ciBvd24gc2VydmVy
LgoKVGhhbmtzIGFnYWluLgoKQWxsIHRoZSBiZXN0CgpTdGV2ZQoKLS0tLS1PcmlnaW5hbCBNZXNz
YWdlLS0tLS0KRnJvbTogQmxpbnV4LWxpc3QgPGJsaW51eC1saXN0LWJvdW5jZXNAcmVkaGF0LmNv
bT4gT24gQmVoYWxmIE9mIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24KU2VudDog
MTEgT2N0b2JlciAyMDIyIDE1OjIwClRvOiBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNz
aW9uIDxibGludXgtbGlzdEByZWRoYXQuY29tPgpTdWJqZWN0OiBSZTogTmV3IHVzZXIgcXVlc3Rp
b24KCkhpIFN0ZXZlLAoKT3RoZXIgdXNlcnMgbWlnaHQgbm90IGFncmVlIHdpdGggbWUsIGJ1dCBJ
J20gdGFsa2luZyBhYm91dCB0aGUgZXhwZXJpZW5jZXMgSSBoYWQuIEknbSBhIGRldmVsb3BlciB0
b28sIGFuZCBMaW51eCBpcyBhIGRhaWx5IHJvdXRpbmUgZm9yIG1lLiBPciBJIHdvdWxkIHNheSBJ
IGNhbid0IGxpdmUgd2l0aG91dCBhIExpbnV4IHNlcnZlciDwn5iKCgpJIGhhZCB0cmllZCBkaWZm
ZXJlbnQgIERpc3Ryb3MsIGJ1dCBub25lIG9mIHRoZW0gd29ya2VkIGZvciBtZS4gCkVzcGVjaWFs
bHkgSSBNaXNzIHRoZSBOVkRBIGFuZCBpdHMgZmVlbCBvbiBMaW51eC4gWWVzLCB0aGVyZSBpcyBP
cmNhIGV4aXN0LCBidXQgdGhhdCdzIG5vdCBwcm9kdWN0aW9uIHJlYWR5IEkgZmVlbC4gQnV0IHRo
YXQncyBteSBvYnNlcnZhdGlvbiBvdGhlcnMgaGF2ZSB0aGVpciBleHBlcmllbmNlcyB0b28g8J+Y
igoKTm93LCB3aGF0IEknbSB1c2luZyBwZXJzb25hbGx5IGlzIEkgaGF2ZSB3aW5kb3dzIDEwIFBy
byBhbmQgVk1XYXJlIHBsYXllciAxNiAoTm9uLUNvbW1lcmNpYWwgVmVyc2lvbikuCgpJJ3ZlIG1h
ZGUgYSBWTSB1c2luZyBEZWJpYW4gMTEuMyBhbmQgY29uZmlndXJlZCBpdCBhY2NvcmRpbmcgdG8g
bXkgbmVlZHMgYW5kIGNob2ljZXMuIFRoZW4sIEkgZW5hYmxlZCBTU0ggYWNjZXNzIGluIHRoZSBW
TSBhbmQgbm93IGNhbiBlYXNpbHkgdXNlIGl0IG92ZXIgU1NIIG9uIG15IFdpbmRvd3MgQ29tbWFu
ZCBQcm9tcHQgYW5kIFNGVFAgd2l0aCBGaWxlIFppbGxhLgoKQW5kIHRoaXMgd29ya3MgbGlrZSBh
IGNoYXJtLgoKQ2hlZXJzLAoKCi0tIAoKQWJkdWxsYWggWnViYWlyCkNoaWVmIEV4ZWN1dGl2ZSBP
ZmZpY2VyIAlMb2dvIDxodHRwczovL2JsaW5kaGVscC5uZXQ+CkJsaW5kIEhlbHAgUHJvamVjdApI
eWRlcmFiYWQKUGFraXN0YW4KdDogKzkyICgwKSAzMTcgMzc5MjAzOSA8dGVsOis5MjMxNzM3OTIw
Mzk+CmU6IENFT0BCbGluZEhlbHAubmV0CkJsaW5kSGVscC5uZXQgPGh0dHBzOi8vYmxpbmRoZWxw
Lm5ldD4gCUZhY2Vib29rIAo8aHR0cHM6Ly9mYWNlYm9vay5jb20vYWJkdWxsYWguenViYWlyLm9m
ZmljaWFsPiBMaW5rZWRJbiA8aHR0cHM6Ly9saW5rZWRpbi5jb20vaW4vYXpvZmZpY2lhbD4gVHdp
dHRlciA8aHR0cHM6Ly90d2l0dGVyLmNvbS9hX3pfb2ZmaWNpYWw+IFdoYXRzQXBwIDxodHRwczov
L2FwaS53aGF0c2FwcC5jb20vc2VuZD9waG9uZT05MjMwMzIzMDU2OTg+IFRlbGVncmFtIDxodHRw
czovL3QubWUvYV96X29mZmljaWFsPiBJbnN0YWdyYW0gPGh0dHBzOi8vaW5zdGFncmFtLmNvbS9h
YmR1bGxhaF96dWJhaXJfb2ZmaWNpYWw+CkJhbm5lciA8aHR0cHM6Ly9ibGluZGhlbHAubmV0PgpU
aGUgY29udGVudCBvZiB0aGlzIGVtYWlsIGlzIGNvbmZpZGVudGlhbCBhbmQgaW50ZW5kZWQgZm9y
IHRoZSByZWNpcGllbnQgc3BlY2lmaWVkIGluIHRoZSBtZXNzYWdlIG9ubHkuIEl0IGlzIHN0cmlj
dGx5IGZvcmJpZGRlbiB0byBzaGFyZSBhbnkgcGFydCBvZiB0aGlzIG1lc3NhZ2Ugd2l0aCBhbnkg
dGhpcmQgcGFydHksIHdpdGhvdXQgYSB3cml0dGVuIGNvbnNlbnQgb2YgdGhlIHNlbmRlci4gSWYg
eW91IHJlY2VpdmVkIHRoaXMgbWVzc2FnZSBieSBtaXN0YWtlLCBwbGVhc2UgcmVwbHkgdG8gdGhp
cyBtZXNzYWdlIGFuZCBmb2xsb3cgd2l0aCBpdHMgZGVsZXRpb24sIHNvIHRoYXQgaXQgY2FuIGJl
IGVuc3VyZWQgdGhhdCBzdWNoIGEgbWlzdGFrZSBkb2VzIG5vdCBvY2N1ciBpbiB0aGUgZnV0dXJl
LgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpCbGludXgt
bGlzdCBtYWlsaW5nIGxpc3QKQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQpodHRwczovL2xpc3RtYW4u
cmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0CgoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0
CkJsaW51eC1saXN0QHJlZGhhdC5jb20KaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1h
bi9saXN0aW5mby9ibGludXgtbGlzdAo=

