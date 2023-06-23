Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 73CD073BEFA
	for <lists+blinux-list@lfdr.de>; Fri, 23 Jun 2023 21:40:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1687549220;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=PhuNkYvCv4CREvgPDYXA/84aFVPObpL+1/Vxx9tZD1g=;
	b=jL98b3vkx8fd1QpDGMr0BiGhdP94TYJu5bARIGQm0py7pz9yBUyiEuD7KbS+4RGy8hD2h6
	I8CToOdG4NxeJA2T5l9CrCVlxtE/VJQsLj5GNwGHc41mNsfpz3i7X3qTd5M/Z9MQjht3Cd
	zQ9PtQ4vE6vZKCROH8yupDQMIoL37Q0=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-331-lFqevv0yOA6Ea26TspYZ0w-1; Fri, 23 Jun 2023 15:40:16 -0400
X-MC-Unique: lFqevv0yOA6Ea26TspYZ0w-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com [10.11.54.2])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id A99D4280016B;
	Fri, 23 Jun 2023 19:40:10 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 4CB554087C6F;
	Fri, 23 Jun 2023 19:40:08 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 53EB61946594;
	Fri, 23 Jun 2023 19:40:07 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Fri, 23 Jun 2023 19:39:45 +0000
To: blinux-list@redhat.com
Subject: Re: mtg: A utility for toggling the monitor state on Linux
In-Reply-To: <mailman.1792.1687545952.653862.blinux-list@redhat.com>
References: <mailman.1745.1687543983.653864.blinux-list@redhat.com>
 <mailman.1792.1687545952.653862.blinux-list@redhat.com>
Feedback-ID: 26663242:user:proton
MIME-Version: 1.0
Message-ID: <mailman.1631.1687549207.653871.blinux-list@redhat.com>
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGVsbG8gQ2hpbWUsCgp0aGF0J3MgYSB2ZXJ5IGludGVyZXN0aW5nIHF1ZXN0aW9uLiBIb25lc3Rs
eSwgSSBoYXZlIG5vIGlkZWEuCgptdGcgdXNlcyB4cmFuZHIgdW5kZXIgdGhlIGhvb2QsIHRoYXQn
cyBhbiBYMTEgcHJvZ3JhbSBmb3IgY29uZmlndXJpbmcgCmRpc3BsYXkgb3V0cHV0LgoKU28gSSB3
b3VsZCBndWVzcyBpdCBhcHBsaWVzIG9ubHkgaWZmIFggaXMgYWN0aXZlLgoKV2hpY2ggaXMgcHJv
YmFibHkgbm90IHRoZSBjYXNlIGluIGEgcHVyZSBjb25zb2xlIGVudmlyb25tZW50LgoKClRob3Vn
aCwgaW4gdGhlc2UgaW5zdGFuY2VzLCBJIHdvbmRlciB3aGF0IGRvIHRoZXNlIGludGVyZmFjZXMg
YWN0dWFsbHkgCnVzZSBmb3IgdGFsa2luZyB0byB0aGUgbW9uaXRvciwgSSBtZWFuLCB0aGV5IHN0
aWxsIG5lZWQgdG8gZHJhdyB0aGUgCmNvbnRlbnQgc29tZWhvdyBldmVuIGlmIGl0J3MganVzdCBh
IHRleHQuCgoKQW5kLCBpZiB0aGVyZSB3b3VsZCBiZSBhIHdheSB0byBjb250cm9sIHRoaXMgdXNh
Z2UgZnJvbSBtdGcsIHByZWZlcmFibHkgCndpdGhvdXQgcm9vdCBwcml2aWxlZ2VzLCBhbmQgd2l0
aG91dCBicmVha2luZyBhbnl0aGluZy4KCgpJZiBpdCB0dXJuZWQgb3V0IHRoZXJlIGlzIGFuIGFw
cHJvYWNoIHRoYXQgY291bGQgYmUgdXNlZCwgaW1wbGVtZW50YXRpb24gCmluIG10ZyBzaG91bGQg
YmUgdHJpdmlhbCwgdGhlIHByb2dyYW0gaXMgZGVzaWduZWQgaW4gc3VjaCBhIHdheSB0byBhbGxv
dyAKZWFzeSBjb3ZlcmluZyBvZiB2YXJpb3VzIGRpc3BsYXkgc2V0dXBzLCBzcGVjaWZpY2FsbHkg
d2l0aCBmdXR1cmUgCldheWxhbmQgc3VwcG9ydCBpbiBtaW5kLgoKCkFzIGZvciBjb21waWxhdGlv
biwgaXQncyBhIHN0YW5kYXJkIFJ1c3QgcHJvZ3JhbSwgYWZ0ZXIgcnVubmluZyBjYXJnbyAKYnVp
bGQgLS1yZWxlYXNlIC1xLCB0aGUgb3V0cHV0IHNob3VsZCBiZSBsb2NhdGVkIGluIC4vdGFyZ2V0
L3JlbGVhc2UKCgpCZXN0IHJlZ2FyZHMKCgpSYXN0aXNsYXYKCgpExYhhIDIzLiA2LiAyMDIzIG8g
MjA6MzggTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiBuYXDDrXNhbChhKToKPiBJ
IGFtIHdvbmRlcmluZywgd2lsbCB5b3VyICJtdGciIHdvcmsgaW4gYSBjb25zb2xlIG9ubHkgc3lz
dGVtPyBJIGluc3RhbGxlZAo+IENhcmdvIGZyb20gRGViaWFuLWFuZC1mcm9tIHlvdXIgUkVBRE1F
IGluc3RydWN0aW9ucywgcmFuCj4gY2FyZ28gYnVpbGQgLS1yZWxlYXNlIC1xCj4gZWl0aGVyIHdp
dGggb3Igd2l0aG91dCBzdWRvLCBpdCBqdXN0IHNpdHMgdGhlcmUtYW5kLWNyZWF0ZXMgQ2FyZ28u
bG9jIGFuZAo+IENhcmdvLnRvbWwuIFRoYW5rcyBpbiBhZHZhbmNlCj4gQ2hpbWUKPgo+IF9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gQmxpbnV4LWxpc3Qg
bWFpbGluZyBsaXN0Cj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+IGh0dHBzOi8vbGlzdG1hbi5y
ZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKPgoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0
CkJsaW51eC1saXN0QHJlZGhhdC5jb20KaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1h
bi9saXN0aW5mby9ibGludXgtbGlzdAo=

