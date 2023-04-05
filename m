Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 96B0D6D8764
	for <lists+blinux-list@lfdr.de>; Wed,  5 Apr 2023 21:52:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1680724359;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=7nOFOJHzWmHelj1859pbZSmyJ0Tz/Xk0O49vcHQ6hlw=;
	b=Rmuh5siJsx/vDMN5O3WVDgW20w2KxmgfpUZOmHpW2TtLULu665CPm77F0TluP04Zxui82b
	shYjgiGkQepzOHIoA5oSKspF0KKKsWPRtQKnUScBoziP95lsdGZn/jV6Ls/NmYz+cShrfx
	zueRmKEkAd5TI6uQGK7iwfDl+91EHzM=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-400-IuMEzaPdOweomf2GB_Apng-1; Wed, 05 Apr 2023 15:52:37 -0400
X-MC-Unique: IuMEzaPdOweomf2GB_Apng-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com [10.11.54.4])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id B27CE85A5B1;
	Wed,  5 Apr 2023 19:52:35 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id CC0AD2027144;
	Wed,  5 Apr 2023 19:52:34 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 3911A19465A4;
	Wed,  5 Apr 2023 19:52:34 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Wed, 5 Apr 2023 21:52:29 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Subject: Re: Debian beginner questions/looking for a good rolling distro
To: blinux-list@redhat.com
References: <mailman.1235.1680685726.558769.blinux-list@redhat.com>
 <mailman.1949.1680706766.558770.blinux-list@redhat.com>
 <mailman.2039.1680707830.558774.blinux-list@redhat.com>
 <mailman.2141.1680708565.558772.blinux-list@redhat.com>
 <mailman.2157.1680711899.558772.blinux-list@redhat.com>
 <mailman.2249.1680721115.558766.blinux-list@redhat.com>
In-Reply-To: <mailman.2249.1680721115.558766.blinux-list@redhat.com>
Message-ID: <mailman.2197.1680724354.558775.blinux-list@redhat.com>
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
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGksCgphbnN3ZXIgaW4gbGluZS4KCkxlIDA1LzA0LzIwMjMgw6AgMjA6NTgsIExpbnV4IGZvciBi
bGluZCBnZW5lcmFsIGRpc2N1c3Npb24gYSDDqWNyaXTCoDoKVGhlIG90aGVyIGlzc3VlIHdpdGgg
YXJjaCBpcyB0aGF0IGl0IGRvZXMgbm90IHN1cHBvcnQgc2VjdXJlIGJvb3QgYWxsIHRob3VnaHQg
dG8KYmUgZmFpciwgc2xpbnQgZG9lc27igJl0IGVpdGhlci4KClRoaXMgaXMgY29ycmVjdC4gQnV0
IGlmIHVzaW5nIFdTTDIgaW4gV2luZG93cyB5b3UgY2FuIGRvd25sb2FkIGFuICh1bm9mZmljaWFs
KQpBcmNoIFdTTCBmcm9tIHRoZSBNaWNyb3NvZnQgU3RvcmUuCkxpbmtzOgpodHRwczovL3d3dy5t
aWNyb3NvZnQuY29tL2VuLXVzL3NlYXJjaC9zaG9wL2FwcHM/cT1saW51eApodHRwczovL2FwcHMu
bWljcm9zb2Z0LmNvbS9zdG9yZS9kZXRhaWwvYXJjaC13c2wvOU1aTk1OS1NNNzNYP2hsPWVuLXVz
JmdsPXVzCgpJIGRpZG4ndCB0cnksIG5vdCBoYXZpbmcgYSBXaW5kb3dzIGluc3RhbGxhdGlvbgpB
IHdvcmthcm91bmQgaXMgdG8gcnVuIG9uZSBvZiB0aGUgc3lzdGVtIGluIGEgdmlydHVhbCBtYWNo
aW5lLgoKQ2hlZXJzLApEaWRpZXIKZGlkaWVyYXRzbGludGRvdGZyCgo+IE1hdHRoZXcKPiAKPj4g
T24gQXByIDUsIDIwMjMsIGF0IDEyOjI0IFBNLCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNj
dXNzaW9uIDxibGludXgtbGlzdEByZWRoYXQuY29tPiB3cm90ZToKPj4KPj4gTGUgMDUvMDQvMjAy
MyDDoCAxNzoyOSwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiBhIMOpY3JpdCA6
Cj4+PiBBcyBmb3Igd2hhdCBJIHVzZSBvbiBhIGRhaWx5IGJhc2lzPwo+Pj4gaTMgZm9yIGEgd20K
Pj4+IEZpcmVmb3ggZm9yIGEgYnJvd3Nlcgo+Pj4gUGlkZ2luIGZvciBJTS9JUkMgYW5kIHNvIG9u
Cj4+PiBUZXh0IGVkaXRvcnMKPj4+IEtvZGkgZm9yIGEgbWVkaWEgY2VudGVyCj4+PiBtcHYgZm9y
IHBsYXlpbmcgdGhpbmdzIGluIHRoZSB0ZXJtaW5hbC4KPj4KPj4gRm9yIHlvdXIgaW5mb3JtYXRp
b24gYWxsIG9mIHRoZW0gYXJlIGluY2x1ZGVkIGluIFNsaW50IHdpdGggb25lIGV4Y2VwdGlvbjog
a29kaQo+Pgo+PiBEaWRpZXIKPj4gZGlkaWVyYXRzbGludC5mcgoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0CkJs
aW51eC1saXN0QHJlZGhhdC5jb20KaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9s
aXN0aW5mby9ibGludXgtbGlzdAo=

