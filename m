Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 3025E7B8326
	for <lists+blinux-list@lfdr.de>; Wed,  4 Oct 2023 17:04:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1696431865;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=E2EVjmomTfm4i994MTMwIyYOggLBTNGdDDufjXRC8io=;
	b=GfU6jxX14TCTrHlhv+hl/uDgUDR2kyLezLgO42nNCRgQKHS3lCbuRuDsY8Yy+4MTGCrNCz
	lnuWEX45xyLWGxnnlxwm5tsFIvvpF2QuAGMkM7LrxWofG+zeaAAClsD9P3UBSj83hM3aOE
	RNJmxlun4CCC0MIEl+4L8JDSQY1xZyo=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-60-BSfpKvahN5mD6jGRhnVDbA-1; Wed, 04 Oct 2023 11:04:21 -0400
X-MC-Unique: BSfpKvahN5mD6jGRhnVDbA-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com [10.11.54.6])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 2F51318175A5;
	Wed,  4 Oct 2023 15:04:18 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 0041F215670B;
	Wed,  4 Oct 2023 15:04:17 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 7BAB019465B1;
	Wed,  4 Oct 2023 15:04:17 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Wed, 4 Oct 2023 11:04:08 -0400
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Intro.
In-Reply-To: <mailman.1265.1696431350.2981444.blinux-list@redhat.com>
References: <mailman.776.1696418321.2981445.blinux-list@redhat.com>
 <mailman.1265.1696431350.2981444.blinux-list@redhat.com>
MIME-Version: 1.0
Message-ID: <mailman.1251.1696431857.2981449.blinux-list@redhat.com>
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

U2xpbnQgbWF5IGJlIGEgYmV0dGVyIGJldC4gIFdpdGggc2xpbnQgdGhvc2UgcnVubmluZyBvbiBj
b21tYW5kIGxpbmUKb3BlcmF0aW5nIHN5c3RlbXMgaGF2ZSBhIGNob2ljZSB0byBzdGFydCBpbiBj
b25zb2xlIHdoaWNoIGlzIGNvbW1hbmQgbGluZQpvciBncmFwaGljYWwgd2hpY2ggaXMgZGVza3Rv
cCBsaWtlIHdpbmRvd3MuICBFdmVuIGlmIHlvdSBzdGFydCBpbiBjb25zb2xlCnlvdSBjYW4gZ28g
aW50byBncmFwaGljYWwgaWYgeW91IG5lZWQgaXQuClVuZm9ydHVuYXRlbHkgd2UgaGF2ZSBlaXRo
ZXIgYSBnYXJiYWdlIHJvdXRlciBvciBhIGdhcmJhZ2UgbmV0d29yayB3aGljaAppcyBwcmV2ZW50
aW5nIGEgZ29vZCBkb3dubG9hZCBvZiBzbGludCBoZXJlLiAgc2xpbnQgaXMgb24KaHR0cHM6Ly9z
bGFja3dhcmUudWsvc2xpbnQvIGFuZCB0aGUgaXNvIHRvIGRvd25sb2FkIGlzIGlzbzUgaWYgYSBt
b2Rlcm4KY29tcHV0ZXIgaXMgYmVpbmcgdXNlZC4KVGhhdCBpcyB3aHkgSSBhc2tlZCB0aGUgcXVl
c3Rpb25zIEkgZGlkIGVhcmxpZXIuICBOZXZlciByZWNvbW1lbmQgYW55dGhpbmcKYWhlYWQgb2Yg
YSBuZWVkcyBhc3Nlc3NtZW50LgoKCi0tIEp1ZGUgPGpkYXNoaWVsIGF0IHBhbml4IGRvdCBjb20+
ICJUaGVyZSBhcmUgZm91ciBib3hlcyB0byBiZSB1c2VkIGluCmRlZmVuc2Ugb2YgbGliZXJ0eTog
c29hcCwgYmFsbG90LCBqdXJ5LCBhbmQgYW1tby4gUGxlYXNlIHVzZSBpbiB0aGF0Cm9yZGVyLiIg
RWQgSG93ZGVyc2hlbHQgMTk0MC4KCk9uIFdlZCwgNCBPY3QgMjAyMywgTGludXggZm9yIGJsaW5k
IGdlbmVyYWwgZGlzY3Vzc2lvbiB3cm90ZToKCj4gSGkuCj4gQ2hlY2sgb3V0IExpbnV4IE1pbnQg
TWF0ZQo+IGh0dHBzOi8vbGludXhtaW50LmNvbQo+Cj4KPiA+IE9uIE9jdCA0LCAyMDIzLCBhdCA3
OjE4IEFNLCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIDxibGludXgtbGlzdEBy
ZWRoYXQuY29tPiB3cm90ZToKPiA+Cj4gPiBIaSBndXlzLCBzbyBnbGFkIHRvIGJlIGpvaW5pbmcg
dGhpcyBncm91cC4gSSBrbm93IG5vdGhpbmcgYWJvdXQgTGludXggcGxhdGZvcm0gYnV0IHdvdWxk
IGxpa2UgdG8gdHJ5IExpbnV4IGZvciBteXNlbGYuIFRoZSBwcm9ibGVtIGlzIEkgd291bGRu4oCZ
dCBrbm93IHdoaWNoIHZlcnNpb24gdG8gdHJ5IG91dCBmaXJzdCBhbmQgdGhhdCBpcyBvbmUgcmVh
c29uIGZvciBqb2luaW5nIHRoaXMgZ3JvdXAuIEkgYW0gYSBibGluZCBwZW5zaW9uZXIgbGl2aW5n
IGluIFNjb3RsYW5kIFVLLiBJRiB5b3UgY291bGQgcHJvdmlkZSBtZSB3aXRoIGhlbHAvYWR2aWNl
IG9uIHdoaWNoIHZlcnNpb24gb2YgTGludXggd291bGQgYmUgYmVzdCBmb3IgbWUgSSB3b3VsZCBh
cHByZWNpYXRlIGl0IGluZGVlZCwgQmlsbHkKPiA+Cj4gPiBTZW50IGZyb20gTWFpbCBmb3IgV2lu
ZG93cwo+ID4KPiA+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCj4gPiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPiA+IEJsaW51eC1saXN0QHJlZGhhdC5j
b20KPiA+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4
LWxpc3QKPgo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
Cj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+IGh0
dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKPgoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQmxpbnV4LWxp
c3QgbWFpbGluZyBsaXN0CkJsaW51eC1saXN0QHJlZGhhdC5jb20KaHR0cHM6Ly9saXN0bWFuLnJl
ZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo=

