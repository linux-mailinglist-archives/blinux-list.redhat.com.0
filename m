Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 538F46B63A0
	for <lists+blinux-list@lfdr.de>; Sun, 12 Mar 2023 08:16:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1678605372;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=R5TKzOOIZku/qpW/bHEzInLM/VUCufaGwSSTlHfiiHk=;
	b=WW04vxQcBq70rcg6GB8yrXqvIqbzh/lPUuaM8OJ5qRvuw5+wuV5bNbv2ooSlsq4LeELizo
	j0eJPa8p0Bv7iGAutCZcEVk5xwUR2knXgThpwGOlWRwARfAuIScFEnzzZqhu06Uaf2jdTU
	LLGtkMFDSOXfej0iRw4O8tN6N9zUk+8=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-52-xUSPQMxXM_qd2qLROA1gdA-1; Sun, 12 Mar 2023 03:16:10 -0400
X-MC-Unique: xUSPQMxXM_qd2qLROA1gdA-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.rdu2.redhat.com [10.11.54.7])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 00AA63C025D7;
	Sun, 12 Mar 2023 07:16:09 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id CE86A140EBF6;
	Sun, 12 Mar 2023 07:16:08 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 674E41946A48;
	Sun, 12 Mar 2023 07:16:08 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
MIME-Version: 1.0
In-Reply-To: <mailman.450.1678604156.3486283.blinux-list@redhat.com>
References: <mailman.398.1678577483.3486290.blinux-list@redhat.com>
 <mailman.450.1678604156.3486283.blinux-list@redhat.com>
Date: Sun, 12 Mar 2023 07:16:02 +0000
Subject: Re: has anyone got emmaubuntus talking?
To: blinux-list@redhat.com
Message-ID: <mailman.408.1678605367.3486286.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.7
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

UGx1cywgdGhlcmUgYXJlIFVidW50dSB2YXJpYW50cyBmb3IgWEZDRShYdWJ1bnR1KSBhbmQgTFhE
RShMdWJ1bnR1KQphbmQgbGFzdCBJIGNoZWNrZWQsIHRoZXJlIHdlcmUgWEZDRSBhbmQgTFhERSB2
YXJpYW50cyBvZiBEZWJpYW4gQ0QxCmFuZCB0aGUgRGViaWFuIE5ldGluc3RhbGxlciBmZWF0dXJl
ZCBMWERFIGFuZCBYRkNFIGFsb25nc2lkZSBHbm9tZSwKS0RFLCBhbmQgTWF0ZSBvbiB0aGUgbGlz
dCBvZiBvcHRpb25zIGF0IHRoZSBpbnN0YWxsIGFkZGl0aW9uYWwKc29mdHdhcmUgc3RlcC4KClBy
ZXN1bWFibHksIG90aGVyIG1ham9yIGRpc3Ryb3MgaGF2ZSBvcHRpb25zLCBlaXRoZXIgYXQgdGlt
ZSBvZgpkb3dubG9hZGluZyB0aGUgaXNvLCB0aW1lIG9mIGluc3RhbGxhdGlvbiwgb3IgYWZ0ZXIg
aW5zdGFsbGluZyB0aGUKc3lzdGVtLCB0byBzZXR1cCBYRkNFLCBMWERFLCBMWFFULCBvciBvbmUg
b2YgdGhlIG1hbnkgc3RhbmQtYWxvbmUKd2luZG93IG1hbmFnZXJzLgoKT24gMy8xMi8yMywgTGlu
dXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiA8YmxpbnV4LWxpc3RAcmVkaGF0LmNvbT4g
d3JvdGU6Cj4gSGVsbG8sCj4KPiBhcmUgeW91IHJlYWxseSBzdXJlIGl0J3MgbmVjZXNzYXJ5IHRv
IHVzZSBhIHNwZWNpYWxpemVkIExpbnV4Cj4gZGlzdHJpYnV0aW9uIGp1c3QgYmVjYXVzZSBvZiB0
aGUgY29tcHV0ZXIncyBhZ2U/Cj4KPiBJIG1lYW4sIExpbnV4IGlzIHByZXR0eSBsaWdodHdlaWdo
dCBldmVuIG9uIHRoZSBmbGFnc2hpcCBkaXN0cm9zLCBpbgo+IG1vc3QgY2FzZXMsIHlvdSdyZSBj
b21wbGV0ZWx5IGZpbmUgd2l0aCB0aGVtIGFuZCBjYW4gYmVuZWZpdCBmcm9tIHRoZWlyCj4gYWNj
ZXNzaWJpbGl0eSBzdXBwb3J0Lgo+Cj4gSSd2ZSByZWNlbnRseSBpbnN0YWxsZWQgVWJ1bnR1IE1h
dGUgMjIuMDQgNjQtYml0IG9uIG15IGNjYS4gMTUgeWVhcnMgb2xkCj4gbGFwdG9wLCBhbmQgSSB3
YXMgdmVyeSBwbGVhc2VkIHdpdGggdGhlIGV4cGVyaWVuY2UuCj4KPiBJbmRlZWQsIGl0IHdhcyBu
b3QgYXMgbGlnaHRuaW5nIGFzIG15IGN1cnJlbnQtb25lLCB0aG91Z2ggaG9uZXN0bHksIEkKPiBo
YWQgYSBmZWVsaW5nIG1vc3Qgb2YgdGhlIGRlbGF5IGNhbWUgYWN0dWFsbHkgZnJvbSB0aGUgcGh5
c2ljYWwKPiBrZXlib2FyZCwgd2hpY2ggaXMgdmVyeSBzdHVyZHkgY29tcGFyZWQgdG8gdG9kYXkn
cyBzdGFuZGFyZHMsIGFuZCB0YWtlcwo+IHF1aXRlIGFuIGVmZm9ydCB0byB0eXBlIG9uLgo+Cj4g
QnV0IGV2ZW4gd2l0aCB0aGlzIHNsb3dkb3duLCB0aGUgZXhwZXJpZW5jZSB3YXMgc3RpbGwgcXVp
dGUgZmx1ZW50Lgo+Cj4KPiBCZXN0IHJlZ2FyZHMKPgo+Cj4gUmFzdGlzbGF2Cj4KPgo+IETFiGEg
MTIuIDMuIDIwMjMgbyAwOjMxIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gbmFw
w61zYWwoYSk6Cj4+IEkgZG93bmxvYWRlZCB0aGUgbGF0ZXN0IHJlbGVhc2UuICBJdCBoYXMgZXNw
ZWFrLW5nIG9uIGl0IGJ1dCBkb2Vzbid0IGhhdmUKPj4gb3JjYS4gIEkgY291bGRuJ3QgZmlndXJl
IG91dCBob3cgdG8gZ2V0IGVzcGVha3VwLW5nIHRvIGNvbWUgdXAgb24gYm9vdCBzbwo+PiBJJ2Qg
aGF2ZSBhIHRhbGtpbmcgaW5zdGFsbCBhdCBsZWFzdC4KPj4gRm9yIHRob3NlIHRoYXQgZG9uJ3Qg
eWV0IGtub3cgZW1tYXVidW50dXMgaXMgYSBkaXN0cmlidXRpb24gYWltZWQgYXQKPj4gdW5kZXIt
cG93ZXJlZCBhbmQgcmVmdXJiaXNoZWQgbWFjaGluZXMgc3R1ZmYgdGhhdCB3b3VsZCBvdGhlcndp
c2UgZW5kIHVwCj4+IGluIHRoZSBsYW5kIGZpbGxzLiAgSXQncyBmb3IgYmVnaW5uZXJzIHRvIGxp
bnV4IGFuZCB0aGUgb25seSByZWFzb24gSSdtCj4+IGRvaW5nIGFueXRoaW5nIHdpdGggaXQgYXQg
YWxsIGlzIHRvIHBvc3NpYmx5IGhlbHAgYSByZW1vdGUgc2lnaHRlZCBwZXJzb24KPj4gbWlncmF0
ZSBvbmUgb3IgbW9yZSBvbGQgd2luZG93cyBtYWNoaW5lcyB0byB0aGlzIHZlcnNpb24gb2YgbGlu
dXggYW5kIHNoZQo+PiBoYXNuJ3QgdXNlZCBsaW51eCB5ZXQuICBJdCBvZmZlcnMgeGZjZSBhbmQg
bHhxdCBhcyBkZXNrdG9wcy4gIElmIG9yY2EKPj4gaXNuJ3QgaW4gdGhlIHJlcG9zaXRvcnkgYmVp
bmcgdXNlZCBpdCBvdWdodCB0byBnZXQgaW4gdGhlIHJlcG9zaXRvcnkgc28KPj4gdGhlIGRlc2t0
b3BzIGdldCBhY2Nlc3NpYmxlIGZvciBzY3JlZW4gcmVhZGVyIHVzZXJzLgo+Pgo+Pgo+Pgo+PiBK
dWRlIDxqZGFzaGllbCBhdCBwYW5peCBkb3QgY29tPiAiVGhlcmUgYXJlIGZvdXIgYm94ZXMgdG8g
YmUgdXNlZCBpbgo+PiBkZWZlbnNlIG9mIGxpYmVydHk6Cj4+ICAgc29hcCwgYmFsbG90LCBqdXJ5
LCBhbmQgYW1tby4gUGxlYXNlIHVzZSBpbiB0aGF0IG9yZGVyLiIKPj4gLUVkIEhvd2RlcnNoZWx0
IChBdXRob3IsIDE5NDApCj4+Cj4+IC4KPj4KPj4gX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KPj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4+IEJsaW51
eC1saXN0QHJlZGhhdC5jb20KPj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9s
aXN0aW5mby9ibGludXgtbGlzdAo+Pgo+Cj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KPiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPiBCbGludXgtbGlz
dEByZWRoYXQuY29tCj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5m
by9ibGludXgtbGlzdAo+CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQpo
dHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cg==

