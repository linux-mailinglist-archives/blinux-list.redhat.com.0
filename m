Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 586186FF09E
	for <lists+blinux-list@lfdr.de>; Thu, 11 May 2023 13:39:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1683805166;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=r+R/i59/cppSrZny24kvB1S9JOy/X90DUH8hK5WAwu8=;
	b=DnDf8A7gqSRwD/6Je7w0GA9/jVABG1p43XpG8kitc0WDSG+XrGdVvxezkUE2Lx8cjEPNH3
	im+jMdx5w9ZsVqFirdA5vulJQ8PlvFPhnf8jI5SCLxkdfr64OECg61jaNcTph1adZb7rxG
	0BB1ZS5YrQY0BZTPTWhR9/BeE3/Dsdw=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-96-Erbr4iwiM5uAWdSC-5TdRg-1; Thu, 11 May 2023 07:39:22 -0400
X-MC-Unique: Erbr4iwiM5uAWdSC-5TdRg-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.rdu2.redhat.com [10.11.54.8])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id BF56787DC01;
	Thu, 11 May 2023 11:39:20 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 41088C16024;
	Thu, 11 May 2023 11:39:11 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 8F32A19451D5;
	Thu, 11 May 2023 11:39:10 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Thu, 11 May 2023 13:39:02 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: Lios and Lios-git Arch linux, packages in conflict
To: blinux-list@redhat.com
References: <mailman.908.1683656585.2822857.blinux-list@redhat.com>
 <mailman.1489.1683717824.2822852.blinux-list@redhat.com>
In-Reply-To: <mailman.1489.1683717824.2822852.blinux-list@redhat.com>
Message-ID: <mailman.2131.1683805150.2822855.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.8
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: de-DE
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

SG93ZHksCgppIGFkZGVkIGdzdC1wbHVnaW5zLWJhc2UtbGlicyBhcyBkZXBlbmRlbmN5IGFuZCBy
ZXBsYWNlZCBlc3BlYWsgd2l0aCAKZXNwZWFrLW5nLgoKY2hlZXJzIGNocnlzCkFtIDEwLjA1LjIz
IHVtIDEzOjIzIHNjaHJpZWIgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbjoKPiBI
aSwKPgo+IGl0IHNob3VsZCBiZSBva2F5LCBJIGRvbid0IGhhdmUgZXNwZWFrIGVpdGhlciBhbmQg
SSdtIGZpbmUuCj4KPgo+IEJlc3QgcmVnYXJkcwo+Cj4KPiBSYXN0aXNsYXYKPgo+Cj4gRMWIYSA5
LiA1LiAyMDIzIG8gMjA6MjMgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiBuYXDD
rXNhbChhKToKPj4gSGksCj4+Cj4+IEkgd2FudCB0byBpbnN0YWxsIExpb3Mgb3IgbWF5YmUgTGlv
cy1naXQgdG8gbXkgQXJjaCBMaW51eCwgYnV0IGVzcGVhay1uZwo+PiB3aGljaCBJIHVzZSBpcyBp
biBjb25mbGljdCB3aXRoIEVzcGVhaywgd2hpY2ggTGlvcy1naXQgd2FudHMgdG8gaW5zdGFsbC4K
Pj4gQ2FuIEkgc2tpcCB0aGlzIGRlcGVuZGVuY2ksIG9yIG11c3QgdGhlIHJlcG8gYmUgdXBkYXRl
ZD8gTGlvcyBpcyB3b3JraW5nCj4+IHdpdGggZXNwZWFrLW5nLCBzbyBFc3BlYWsgaXMgbm90IG5l
ZWRlZC4KPj4KPj4gVGhhbmtzLAo+Pgo+PiBQYXZlbAo+Pgo+Pgo+PiBfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+PiBCbGludXgtbGlzdCBtYWlsaW5nIGxp
c3QKPj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+PiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNv
bS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cj4+Cj4gX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KPiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPiBC
bGludXgtbGlzdEByZWRoYXQuY29tCj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1h
bi9saXN0aW5mby9ibGludXgtbGlzdAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkJsaW51eC1saXN0IG1haWxpbmcgbGlzdApCbGludXgtbGlzdEByZWRo
YXQuY29tCmh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4
LWxpc3QK

