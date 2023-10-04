Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 037177B8333
	for <lists+blinux-list@lfdr.de>; Wed,  4 Oct 2023 17:10:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1696432228;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=O0cEIP1WSsrNsEkmtnnkxEsCjVj5KOYfbp6YbcoB4WQ=;
	b=QDFrRs+nEVKCSV9ncXsNnG+ZDaVZArzV8w+23GjgO3Xl0IaeSfYLyqLIhJ4cXtaXiv3q5p
	VvPkXhh6YhTk0WrMLjAYN+EWdpMl5BZLkyL+hc18D/pp5N9fJLY33T19XGwmFTovqJ1D7h
	gDw1AUP6lQLff4ymfcjiUhQUu39u624=
Received: from mimecast-mx02.redhat.com (mx-ext.redhat.com [66.187.233.73])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-153-_q1D5UQ4N66YzVFJ-RmK-g-1; Wed, 04 Oct 2023 11:10:25 -0400
X-MC-Unique: _q1D5UQ4N66YzVFJ-RmK-g-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com [10.11.54.1])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 0AF873C14766;
	Wed,  4 Oct 2023 15:10:23 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 7DBDB40C2017;
	Wed,  4 Oct 2023 15:10:22 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id EA8F419465B1;
	Wed,  4 Oct 2023 15:10:21 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Wed, 04 Oct 2023 15:09:36 +0000
To: blinux-list@redhat.com
Subject: Re: Intro.
In-Reply-To: <mailman.776.1696418321.2981445.blinux-list@redhat.com>
References: <mailman.776.1696418321.2981445.blinux-list@redhat.com>
Feedback-ID: 26663242:user:proton
MIME-Version: 1.0
Message-ID: <mailman.1194.1696432221.2981446.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.1
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGVsbG8sCgpzaW5jZSB5b3UncmUgbmV3IHRvIExpbnV4LCBJIHdvdWxkIHJlY29tbWVuZCBnb2lu
ZyB3aXRoIFVidW50dSBNYXRlLiBJdCAKd2lsbCBwcm92aWRlIHlvdSB3aXRoIHRoZSBtb3N0IHN0
YWJsZSB3aGlsZSBzdGlsbCB1cHRvZGF0ZSBleHBlcmllbmNlLCAKc28geW91IGNhbiBmdWxseSBm
b2N1cyBvbiBkaXNjb3ZlcmluZyB0aGUgb3BlbiBwbGF0Zm9ybS4KClRob3VnaCwgSSB3b3VsZCBy
ZWNvbW1lbmQgdG8gd2FpdCBhIHdlZWssIFVidW50dSAyMy4xMCBpcyBzY2hlZHVsZWQgdG8gCmJl
IHJlbGVhc2VkIG9uIDEydGggT2N0b2Jlciwgc2hpcHBpbmcgdGhlIGxhdGVzdCBhdHNwaSBwYWNr
YWdlcyBhbmQgCm90aGVyIHRoaW5ncy4KCgpJZiB0aGlzIGlzIHRoZSBjaG9pY2UgeW91IGRlY2lk
ZSB0byB0YWtlLCB5b3UgbWF5IGFsc28gYmUgaW50ZXJlc3RlZCBpbiAKc29tZSBvZiBteSByZWxh
dGVkIHByb2plY3RzLCBuYW1lbHk6CgpodHRwczovL2dpdGh1Yi5jb20vUmFzdGlzbGF2S2lzaC91
bWFpCgoKZm9yIHNldHRpbmcgdXAgYWNjZXNzaWJpbGl0eSBvbiBVTSwKCmh0dHBzOi8vZ2l0aHVi
LmNvbS9SYXN0aXNsYXZLaXNoL21sb2NrCgoKZm9yIGZpeGluZyBvbmUgYW5ub3lpbmcgYnVnIHdp
dGggZm9jdXMgaWYgaXQgYXBwZWFycyBvbiB5b3VyIG1hY2hpbmUsIGFuZDoKCmh0dHBzOi8vZ2l0
aHViLmNvbS9SYXN0aXNsYXZLaXNoL210ZwoKCmZvciB0dXJuaW5nIG9mZiB5b3VyIG1vbml0b3Iu
CgoKUmVnYXJkaW5nIHVtYWkgYW5kIHN1cHBvcnQgZm9yIFVNIDIzLjEwLCBpdCBzaG91bGQgYmUg
cHJlcGFyZWQgYnkgdGhlIApkYXRlIG9mIHRoZSBkaXN0cm8ncyByZWxlYXNlLCBzZWUgdGhlIHBy
b2plY3QncyByZWFkbWUgZm9yIGFuIHVwdG9kYXRlIApsaXN0IG9mIHN1cHBvcnRlZCBVTSB2ZXJz
aW9ucy4KCgpIYXZlIGEgbG90IG9mIGZ1biwgYW5kIHRoZSBiZXN0IGV4cGVyaWVuY2UhCgoKQmVz
dCByZWdhcmRzCgoKUmFzdGlzbGF2CgoKRMWIYSA0LiAxMC4gMjAyMyBvIDEzOjE4IExpbnV4IGZv
ciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gbmFww61zYWwoYSk6Cj4gSGkgZ3V5cywgc28gZ2xh
ZCB0byBiZSBqb2luaW5nIHRoaXMgZ3JvdXAuIEkga25vdyBub3RoaW5nIGFib3V0IExpbnV4IHBs
YXRmb3JtIGJ1dCB3b3VsZCBsaWtlIHRvIHRyeSBMaW51eCBmb3IgbXlzZWxmLiBUaGUgcHJvYmxl
bSBpcyBJIHdvdWxkbuKAmXQga25vdyB3aGljaCB2ZXJzaW9uIHRvIHRyeSBvdXQgZmlyc3QgYW5k
IHRoYXQgaXMgb25lIHJlYXNvbiBmb3Igam9pbmluZyB0aGlzIGdyb3VwLiBJIGFtIGEgYmxpbmQg
cGVuc2lvbmVyIGxpdmluZyBpbiBTY290bGFuZCBVSy4gSUYgeW91IGNvdWxkIHByb3ZpZGUgbWUg
d2l0aCBoZWxwL2FkdmljZSBvbiB3aGljaCB2ZXJzaW9uIG9mIExpbnV4IHdvdWxkIGJlIGJlc3Qg
Zm9yIG1lIEkgd291bGQgYXBwcmVjaWF0ZSBpdCBpbmRlZWQsIEJpbGx5Cj4KPiBTZW50IGZyb20g
TWFpbCBmb3IgV2luZG93cwo+Cj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KPiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPiBCbGludXgtbGlzdEByZWRo
YXQuY29tCj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGlu
dXgtbGlzdAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
QmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0CkJsaW51eC1saXN0QHJlZGhhdC5jb20KaHR0cHM6Ly9s
aXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo=

