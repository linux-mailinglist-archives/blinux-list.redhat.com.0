Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EB3F7BB474
	for <lists+blinux-list@lfdr.de>; Fri,  6 Oct 2023 11:44:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1696585489;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=z11Zw3U15aB0BcFE94FsN0aCtbN5LmL9l+2k6EyoV6E=;
	b=UMcWp7ALBmg2vl2tw6O2kopxQ5DFJERMGAPKAbCulIz/hRF3vLEhYrW1QTF+wZ0DP956Mr
	8SpjiI0w7RQkOVXFftAmwf2n3t6tL7RODTNMVGvN6lzzpK1iNAdJ7EOHVVA4Gc1wxV7tWK
	WEPTxlX8XbwqqVTZdrPSabu9yqweAfo=
Received: from mimecast-mx02.redhat.com (mx-ext.redhat.com [66.187.233.73])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-679-cSSVNsTjN-25M1E3QWgtaw-1; Fri, 06 Oct 2023 05:44:46 -0400
X-MC-Unique: cSSVNsTjN-25M1E3QWgtaw-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com [10.11.54.2])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 471293C176ED;
	Fri,  6 Oct 2023 09:44:44 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 0243840C6EA8;
	Fri,  6 Oct 2023 09:44:38 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 02DA419465B6;
	Fri,  6 Oct 2023 09:44:38 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Fri, 6 Oct 2023 10:44:32 +0100
MIME-Version: 1.0
User-Agent: Betterbird (Linux)
Subject: Re: Intro.
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <mailman.776.1696418321.2981445.blinux-list@redhat.com>
In-Reply-To: <mailman.776.1696418321.2981445.blinux-list@redhat.com>
Message-ID: <mailman.1756.1696585477.2981447.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.2
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

SGV5YSBCaWxseSwgd2VsY29tZSB0byB0aGUgbGlzdAoKCkknbSBnb2luZyB0byBhbHNvIHN1Z2dl
c3QgTGludXggTWludCBNYXRlLCB3aGljaCBSYXN0aXNsYXYgaGFzIGxpbmtlZCB0byAKYnV0IEkn
bSBhbHNvIGdvaW5nIHRvIGV4cGxhaW4gd2h5IEkgZmVlbCBsaWtlIGl0J3MgYSBnb29kIGNob2lj
ZS4KCgpXaGVuIHlvdSBib290IGl0LCBpdCB3aWxsIHB1dCB5b3UgaW4gYSBkZXNrdG9wIG11Y2gg
bGlrZSBXaW5kb3dzIG9yIE1hYyAKc28gaWYgeW91IGFyZSBjb21pbmcgZnJvbSB0aG9zZSBkZXZp
Y2VzIGl0IHdvbid0IGZlZWwgdG9vIG91dCBvZiBwbGFjZS4gClNsaW50IGlzIG5vdCBiZWdpbm5l
ciBmcmllbmRseSBkdWUgdG8gdGhlIHdheSB5b3UgaW5zdGFsbCBpdCwgd2hpY2ggaXMgCmJ5IGlm
IHlvdSByZW1lbXZlciB0aGUgZGF5cyBvZiBET1MsIHR5cGluZyBpbiBjb21tYW5kcyBhbmQgaGF2
aW5nIHRvIApyZW1lbWJlciBvciBoYXZlIGEgc2Vjb25kIGRldmljZSBoYW5keSB0byBnbyB0aHJv
dWdoIHRoZSBpbnN0YWxsIHN0ZXBzLgoKCkxpbnV4IE1pbnQgYXZvaWRzIHRoaXMgYnkgaGF2aW5n
IHRoZSBpbnN0YWxsZXIgYmUgc2ltaWxhciB0byBXaW5kb3dzLCAKd2hlcmUgaXQgYXNrcyB5b3Ug
dG8gZmlsbCBpbiB3aGF0IGl0IHdhbnRzIHRoZW4gY2xpY2sgbmV4dCwgYW5kIGl0IHdpbGwgCndh
bGsgeW91IHRocm91Z2ggdGhlIHByb2Nlc3MsIHdpdGhvdXQgb3ZlcndoZWxtaW5nIHlvdSB3aXRo
IHRleHQuIFRvIG1lIAp0aGlzIGlzIGEgbmljZSwgZ2VudGxlIHN0YXJ0IHRvIExpbnV4LgoKClRo
ZSBiZWF1dGlmdWwgdGhpbmcgYWJvdXQgTGludXggTWludCBpcyB5b3UgY2FuIGVhc2lseSBmaXJl
IHVwIGEgd2ViIApicm93c2VyIGFuZCBHb29nbGUgeW91ciBxdWVyaWVzIGFuZCB1c3VhbGx5IGdl
dCBhIHBhZ2Ugb3IgdHdvIG9mIGhlbHBmdWwgCnJlc3VsdHMsIHZlcnN1cyB3aXRoIFNsaW50LCBy
ZWx5aW5nIG9uIGhhdmluZyB0byBtYW51YWxseSBjaGVjayBhIApzcGVjaWZpYyBlbWFpbCBsaXN0
LiBJbiBhIG51dHNoZWxsLCBNaW50IE1hdGUgaXMgYnVpbHQgdG8gYmUgZWFzeSB0byB1c2UgCmFu
ZCBzaW1wbGUgdG8ga2VlcCB1cCB0byBkYXRlLgoKSSdtIGhvcGluZyB0aGlzIGhlbHBzLCBJIGFi
c29sdXRlbHkgZ2V0IGhvdyBkYXVudGluZyBtb3ZpbmcgdG8gTGludXggY2FuIApiZSwgZXNwZWNp
YWxseSBpZiB5b3UgYXJlIG9sZGVyIGxpa2UgeW91IHNhaWQgeW91IGFyZS4KCgpKYWNlCgoKCk9u
IDEwLzQvMjMgMTI6MTgsIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gd3JvdGU6
Cj4gSGkgZ3V5cywgc28gZ2xhZCB0byBiZSBqb2luaW5nIHRoaXMgZ3JvdXAuIEkga25vdyBub3Ro
aW5nIGFib3V0IExpbnV4IHBsYXRmb3JtIGJ1dCB3b3VsZCBsaWtlIHRvIHRyeSBMaW51eCBmb3Ig
bXlzZWxmLiBUaGUgcHJvYmxlbSBpcyBJIHdvdWxkbuKAmXQga25vdyB3aGljaCB2ZXJzaW9uIHRv
IHRyeSBvdXQgZmlyc3QgYW5kIHRoYXQgaXMgb25lIHJlYXNvbiBmb3Igam9pbmluZyB0aGlzIGdy
b3VwLiBJIGFtIGEgYmxpbmQgcGVuc2lvbmVyIGxpdmluZyBpbiBTY290bGFuZCBVSy4gSUYgeW91
IGNvdWxkIHByb3ZpZGUgbWUgd2l0aCBoZWxwL2FkdmljZSBvbiB3aGljaCB2ZXJzaW9uIG9mIExp
bnV4IHdvdWxkIGJlIGJlc3QgZm9yIG1lIEkgd291bGQgYXBwcmVjaWF0ZSBpdCBpbmRlZWQsIEJp
bGx5Cj4KPiBTZW50IGZyb20gTWFpbCBmb3IgV2luZG93cwo+Cj4gX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QK
PiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFp
bG1hbi9saXN0aW5mby9ibGludXgtbGlzdAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0CkJsaW51eC1saXN0QHJl
ZGhhdC5jb20KaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGlu
dXgtbGlzdAo=

