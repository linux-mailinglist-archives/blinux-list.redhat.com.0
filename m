Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 96E576C72A1
	for <lists+blinux-list@lfdr.de>; Thu, 23 Mar 2023 22:56:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1679608565;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=PnaYittCJKaafAqhiJmo9Vcc/MOvHaT+qRSvQoq+Eig=;
	b=fhCPLzkHrkCxTVbK0l73Eb3zT16/zYzi/HMMsz3uNxgbaSrRFAYO8F2Pbve2/oNfsKJfH/
	ysH2q90Lf99jvnxeMoPnPy2d0W46MJO6/KT1sseUjYyVN5xAv6inQ2IYtJyn0ULXn6dx0m
	XNh5oBIfSES1ELxIpyqr8zNGdoShH/0=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-574-tzKjUkGnNSWmc5cGEO4u9Q-1; Thu, 23 Mar 2023 17:56:01 -0400
X-MC-Unique: tzKjUkGnNSWmc5cGEO4u9Q-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.rdu2.redhat.com [10.11.54.8])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id ECDD1802C1E;
	Thu, 23 Mar 2023 21:55:59 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 24381C15BA0;
	Thu, 23 Mar 2023 21:55:59 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id B4E8D19466DF;
	Thu, 23 Mar 2023 21:55:58 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Thu, 23 Mar 2023 21:55:14 +0000
To: blinux-list@redhat.com
Subject: Re: [orca] Odilia, the new Linux screenreader written in Rust,
 reaches 0.1.0 (fwd)
In-Reply-To: <mailman.1401.1679570769.636358.blinux-list@redhat.com>
References: <mailman.1101.1679499219.636362.blinux-list@redhat.com>
 <mailman.1130.1679509316.636367.blinux-list@redhat.com>
 <mailman.1311.1679555916.636358.blinux-list@redhat.com>
 <mailman.1401.1679570769.636358.blinux-list@redhat.com>
Feedback-ID: 26663242:user:proton
MIME-Version: 1.0
Message-ID: <mailman.1539.1679608558.636362.blinux-list@redhat.com>
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T3JjYSBpcyBpbmRvdWJ0ZWJseSBhbiBhbWF6aW5nIHByb2plY3QsIHdpdGggYSBsb3Qgb2YgZ29v
ZCB3b3JrIGJlaGluZCBpdC4KClRob3VnaCwgYXMgZ3JlYXQgYXMgdGhlIGZpbmFsIHByb2R1Y3Qg
aXMsIHRoZXJlIGFyZSBjZXJ0YWluIGxpbWl0YXRpb25zLgoKVGhlIHNjcmVlbnJlYWRlciBpcyB3
cml0dGVuIGluIGEgbGFuZ3VhZ2UgdGhhdCBjYW4gdGFrZSBldGVybml0eSBqdXN0IHRvCmZpbmlz
aCBhIGxvb3AsIGFuZCBpcyBub3QgY2FwYWJsZSBvZiB0cnVlIGNvbmN1cnJlbmN5LiBJJ20gbm90
CmNyaXRpY2l6aW5nIFB5dGhvbiBoZXJlLCBJIHVzZSBpdCBteXNlbGYgYW5kIGxvdmUgdGhlIGxh
bmd1YWdlLCBJJ20ganVzdApzYXlpbmcgdXNpbmcgaXQgZm9yIHBlcmZvcm1hbmNlIGNyaXRpY2Fs
IHRhc2tzIGhhcyBpdHMgY2F2ZWF0cy4KCgpSdXN0IGlzIGZyb20gZ3JvdW5kIHVwIGRlc2lnbmVk
IGZvciBoaWdoIHBlcmZvcm1hbmNlIGFuZCBwYXJhbGxlbApjb21wdXRpbmcuIFRoYXQncyB3aHkg
SSdtIHBlcnNvbmFsbHkgdmVyeSBleGNpdGVkIHRvIHNlZSB0aGVzZSBzdHJlbmd0aHMKdXNlZCBm
b3IgYWNjZXNzaWJpbGl0eSwgdGhleSBjb3VsZCB5aWVsZCB2ZXJ5IGludGVyZXN0aW5nIHJlc3Vs
dHMuCgoKT2RpbGlhIGFsc28gaGFuZGxlcyBpbnB1dCBkZXZpY2VzIGRpZmZlcmVudGx5LCBhbmQg
YWltcyBmb3Igc3VwcG9ydGluZwp0b3VjaCBzY3JlZW5zIGluIHRoZSBmdXR1cmUuIFRoYXQncyBh
bHNvIGEgdmVyeSBpbnRlcmVzdGluZyBmZWF0dXJlLAplc3BlY2lhbGx5IG5vdywgYXMgTGludXgg
bW9iaWxlIHBob25lcyBhcmUgb24gYSByaXNlLgoKCldlJ2xsIHNlZSBob3cgdGhlIHByb2plY3Qg
Z29lcywgYW5kIHdoYXQgcmVzdWx0cyB3ZSBnZXQuIEJ1dCBpdCdzCmNlcnRhaW5seSBhIHZlcnkg
aW50ZXJlc3RpbmcgYW5kIGltcHJlc3NpdmUgd29yaywgdGhhdCBmdWxseSBkZXNlcnZlcwphdHRl
bnRpb24uCgoKQmVzdCByZWdhcmRzCgoKUmFzdGlzbGF2CgoKRMWIYSAyMy4gMy4gMjAyMyBvIDEy
OjI2IExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gbmFww61zYWwoYSk6Cj4gT24g
MjMvMy8yMyAwMzoxOCwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiB3cm90ZToK
Pj4gSW50ZXJlc3RpbmcsIGNvdWxkIHlvdSBiZSBtb3JlIHNwZWNpZmljIG9uIHRoaXM/IEZyb20g
dGhvc2UgSSBrbm93LCBOVkRBCj4+IGlzIFB5dGhvbiAmIEMvQysrLCBKYXdzIGlzIHdyaXR0ZW4g
ZW50aXJlbHkgaW4gQysrIGlmIEkgcmVtZW1iZXIgY29ycmVjdGx5Lgo+Pgo+PiBWb2ljZU92ZXIs
IGp1c3QgbGlrZSB0aGUgdHdvIGlzIG9sZGVyIHRoYW4gUnVzdCBpdHNlbGYsIHNvIEkgZ3Vlc3Mg
aXQncwo+PiB3cml0dGVuIGluIHRoZSBBcHBsZSdzIG1pZGRsZS1sZXZlbCBsYW5ndWFnZXMuCj4+
Cj4+IFdoaWxlIEFuZHJvaWQgaGFzIGEgSmF2YSBjZW50ZXJlZCBhY2Nlc3NpYmlsaXR5IHN5c3Rl
bS4KPiBJbmRlZWQsIEkgdGhpbmsgdGhpcyBtaWdodCBiZSB0aGUgZmlyc3QgaW1wbGVtZW50YXRp
b24gb2YgYSBzY3JlZW4KPiByZWFkZXIgaW4gUnVzdC4KPgo+IEknbSBub3QgaW1tZWRpYXRlbHkg
cGVyc3VhZGVkIHRoYXQgd3JpdGluZyBhbm90aGVyIHNjcmVlbiByZWFkZXIgZm9yIHRoZQo+IExp
bnV4IGRlc2t0b3AgaXMgYSBnb29kIGlkZWEgb3Zlci1hbGwuIEkgdGhpbmsgT3JjYSBpcyBleHBl
cnRseQo+IG1haW50YWluZWQsIGFuZCB0aGF0IG1vc3Qgb2YgdGhlIHByb2JsZW1zIG9mIGdyYXBo
aWNhbCB1c2VyIGludGVyZmFjZQo+IGFjY2Vzc2liaWxpdHkgdW5kZXIgTGludXggYXJpc2Ugb3V0
c2lkZSBvZiBPcmNhIGl0c2VsZi4KPgo+IE9uIHRoZSBvdGhlciBzaWRlLCBpbXBsZW1lbnRpbmcg
ZnJvbSB0aGUgZ3JvdW5kIHVwIHdpdGggbmV3IHRlY2hub2xvZ2llcwo+IG1pZ2h0IHlpZWxkIHBv
c2l0aXZlIHJlc3VsdHMgaW4gdGhlIGVuZCwgaWYgdGhlIHByb2plY3QgaXMgc3VzdGFpbmFibGUs
Cj4gYW5kIHBlb3BsZSBjYW4gb2YgY291cnNlIGNvbnRyaWJ1dGUgdG8gdGhlIGNvbW11bml0eSBo
b3dldmVyIHRoZXkgd2lzaC4KPiBUaGF0IGluY2x1ZGVzIHdvcmtpbmcgb24gYSBuZXcgc2NyZWVu
IHJlYWRlciBwcm9qZWN0IGlmIGl0J3Mgd2hhdCB0aGV5Cj4gd2FudCB0byBkby4KPgo+IFRoZSBs
YXN0IHRpbWUgdGhlcmUgd2FzIGEgc2Vjb25kIHNjcmVlbiByZWFkZXIgZm9yIHRoZSBMaW51eCBk
ZXNrdG9wIC0gSQo+IHRoaW5rIGl0IHdhcyBjYWxsZWQgTFNSIC0gaXQgd2FzIG1haW50YWluZWQg
YnkgSUJNLiBUaGVuIElCTSBkZWNpZGVkIHRvCj4gZGlzY29udGludWUgdGhlaXIgd29yayBvbiB0
aGUgcHJvamVjdCwgYW5kIG5vIG9uZSB0b29rIGl0IG92ZXIuIFNvIHdlJ3ZlCj4gYmVlbiBpbiB0
aGUgIm11bHRpcGxlIHNjcmVlbiByZWFkZXIiIHNpdHVhdGlvbiBiZWZvcmUuCj4KPiBfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IEJsaW51eC1saXN0IG1h
aWxpbmcgbGlzdAo+IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPiBodHRwczovL2xpc3RtYW4ucmVk
aGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cj4KCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkJsaW51eC1saXN0IG1haWxpbmcgbGlzdApC
bGludXgtbGlzdEByZWRoYXQuY29tCmh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4v
bGlzdGluZm8vYmxpbnV4LWxpc3QK

