Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id BE0FF7BA732
	for <lists+blinux-list@lfdr.de>; Thu,  5 Oct 2023 18:59:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1696525159;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=FI1ixMfL07MPddrIJZ92PDEVnqZMkm6qtwjklSMd7Vk=;
	b=RS0cYS/Xkr9E2+nV6MKe2qBNHmdZjkNphAT7gKep/OhCSYTy0848QHkovNmn0zq7+blyyX
	naYv6QD2IV8LgtUBGZ+hBlUJv/ZQl3AO5uwVP7B4BObfUv6uKL4ClL6OrHUSd49IzMaBuG
	PPnSgDy2l6xD6m/VyfogQqaknYQ1dLc=
Received: from mimecast-mx02.redhat.com (mx-ext.redhat.com [66.187.233.73])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-39-2MXapEzFOgihFwbai7_n9w-1; Thu, 05 Oct 2023 12:59:12 -0400
X-MC-Unique: 2MXapEzFOgihFwbai7_n9w-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com [10.11.54.4])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 389191C01737;
	Thu,  5 Oct 2023 16:59:10 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 207E12026D4B;
	Thu,  5 Oct 2023 16:59:05 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 4997619465B1;
	Thu,  5 Oct 2023 16:59:05 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Thu, 5 Oct 2023 12:58:46 -0400
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: RE: Intro.
In-Reply-To: <mailman.1346.1696489387.2981448.blinux-list@redhat.com>
References: <mailman.776.1696418321.2981445.blinux-list@redhat.com>
 <mailman.784.1696420428.2981444.blinux-list@redhat.com>
 <mailman.1346.1696489387.2981448.blinux-list@redhat.com>
MIME-Version: 1.0
Message-ID: <mailman.1572.1696525144.2981444.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.4
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SSdtIGdvaW5nIHRvIHJlY29tbWVuZCBzbGludCBhbmQgSSByZWNvbW1lbmQgd2hlbiB5b3UgaW5z
dGFsbCBzbGludCB0bwpzdGFydCBpbiBjb25zb2xlLiAgVGhlIHJlYXNvbiB0byBzdGFydCBpbiBj
b25zb2xlIGlzIHlvdSBsb2cgaW4gaW4KY29uc29sZS4gIFRoZSBzdGFydHggc2NyaXB0IHlvdSBy
dW4gYWZ0ZXIgbG9naW4uICBJZiBmb3Igd2hhdGV2ZXIgcmVhc29uCnlvdXIgZ3JhcGhpY2FsIGVu
dmlyb25tZW50IGZhaWxzIHRvIHdvcmssIHlvdSBhdCBsZWFzdCBoYXZlIGEgY2hhbmNlIHRvIGRv
CnNvbWV0aGluZyBhYm91dCBpdCBzaW5jZSB5b3UncmUgYWxyZWFkeSBsb2dnZWQgaW4uICBUaGUg
bmlnaHRtYXJlCnNpdHVhdGlvbiBmb3IgZ3JhcGhpY2FsIHVzZXJzIHdobyBzdGFydCBpbiBncmFw
aGljcyBtb2RlIGlzIHRoZWlyIGxvZ2luCmRvZXNuJ3Qgd29yayBhbmQgdGhlbiB0aGV5IGhhdmUg
YSBwYXBlcndlaWdodCB1bnRpbCB0aGV5IHJlaW5zdGFsbCB0aGUKc3lzdGVtLgoKCi0tIEp1ZGUg
PGpkYXNoaWVsIGF0IHBhbml4IGRvdCBjb20+ICJUaGVyZSBhcmUgZm91ciBib3hlcyB0byBiZSB1
c2VkIGluCmRlZmVuc2Ugb2YgbGliZXJ0eTogc29hcCwgYmFsbG90LCBqdXJ5LCBhbmQgYW1tby4g
UGxlYXNlIHVzZSBpbiB0aGF0Cm9yZGVyLiIgRWQgSG93ZGVyc2hlbHQgMTk0MC4KCk9uIFRodSwg
NSBPY3QgMjAyMywgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiB3cm90ZToKCj4g
SGVsbG8sIEkgY2FuIHRlbGwgdGhlIGRpZmZlcmVuY2UgYmV0d2VlbiBsaWdodCBhbmQgZGFyay4g
SSBoYXZlIHVzZWQgYWxsIHdpbmRvd3MgT1Mgc3lzdGVtcyBmcm9tIHdheSBiYWNrIHdpbmRvd3M3
LCBCaWxseQo+Cj4gU2VudCBmcm9tIE1haWwgZm9yIFdpbmRvd3MKPgo+IEZyb206IExpbnV4IGZv
ciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24KPiBTZW50OiAwNCBPY3RvYmVyIDIwMjMgMTI6NTMK
PiBUbzogTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbgo+IFN1YmplY3Q6IFJlOiBJ
bnRyby4KPgo+IEEgY291cGxlIHF1ZXN0aW9ucy4KPiBJbiB5b3VyIGNhc2UgaXMgYmxpbmQgZGVm
aW5lZCBhcyBubyB1c2VhYmxlIHZpc2lvbiBpbmNsdWRpbmcgbm8gYWJpbGl0eSB0bwo+IHNlZSBs
aWdodD8KPiBXaGF0IG9wZXJhdGluZyBzeXN0ZW0gb3Igb3BlcmF0aW5nIHN5c3RlbXMgZGlkIHlv
dSB1c2UgYmVmb3JlIExpbnV4Pwo+IEFuc3dlcnMgdG8gdGhlc2UgdHdvIHF1ZXN0aW9ucyBvdWdo
dCB0byBoZWxwIHRoZSBsaXN0IGdldCB5b3UgYmV0dGVyCj4gZ3VpZGVhbmNlLgo+Cj4KPiAtLSBK
dWRlIDxqZGFzaGllbCBhdCBwYW5peCBkb3QgY29tPiAiVGhlcmUgYXJlIGZvdXIgYm94ZXMgdG8g
YmUgdXNlZCBpbgo+IGRlZmVuc2Ugb2YgbGliZXJ0eTogc29hcCwgYmFsbG90LCBqdXJ5LCBhbmQg
YW1tby4gUGxlYXNlIHVzZSBpbiB0aGF0Cj4gb3JkZXIuIiBFZCBIb3dkZXJzaGVsdCAxOTQwLgo+
Cj4gT24gV2VkLCA0IE9jdCAyMDIzLCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9u
IHdyb3RlOgo+Cj4gPiBIaSBndXlzLCBzbyBnbGFkIHRvIGJlIGpvaW5pbmcgdGhpcyBncm91cC4g
SSBrbm93IG5vdGhpbmcgYWJvdXQgTGludXggcGxhdGZvcm0gYnV0IHdvdWxkIGxpa2UgdG8gdHJ5
IExpbnV4IGZvciBteXNlbGYuIFRoZSBwcm9ibGVtIGlzIEkgd291bGRu4oCZdCBrbm93IHdoaWNo
IHZlcnNpb24gdG8gdHJ5IG91dCBmaXJzdCBhbmQgdGhhdCBpcyBvbmUgcmVhc29uIGZvciBqb2lu
aW5nIHRoaXMgZ3JvdXAuIEkgYW0gYSBibGluZCBwZW5zaW9uZXIgbGl2aW5nIGluIFNjb3RsYW5k
IFVLLiBJRiB5b3UgY291bGQgcHJvdmlkZSBtZSB3aXRoIGhlbHAvYWR2aWNlIG9uIHdoaWNoIHZl
cnNpb24gb2YgTGludXggd291bGQgYmUgYmVzdCBmb3IgbWUgSSB3b3VsZCBhcHByZWNpYXRlIGl0
IGluZGVlZCwgQmlsbHkKPiA+Cj4gPiBTZW50IGZyb20gTWFpbCBmb3IgV2luZG93cwo+ID4KPiA+
IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gPiBCbGlu
dXgtbGlzdCBtYWlsaW5nIGxpc3QKPiA+IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPiA+IGh0dHBz
Oi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKPiA+Cj4K
PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IEJsaW51
eC1saXN0IG1haWxpbmcgbGlzdAo+IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPiBodHRwczovL2xp
c3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cj4KPiBfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IEJsaW51eC1saXN0IG1h
aWxpbmcgbGlzdAo+IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPiBodHRwczovL2xpc3RtYW4ucmVk
aGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cj4KCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkJsaW51eC1saXN0IG1haWxpbmcgbGlzdApC
bGludXgtbGlzdEByZWRoYXQuY29tCmh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4v
bGlzdGluZm8vYmxpbnV4LWxpc3QK

