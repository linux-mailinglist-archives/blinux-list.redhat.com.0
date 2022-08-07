Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D9C758B8DB
	for <lists+blinux-list@lfdr.de>; Sun,  7 Aug 2022 03:15:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1659834913;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=Sq/KYMHvjV9Rpozy//8aUbYT8PwpwY7n3hI4i0VQewc=;
	b=hxUjcjYkdEkzfh7I8lyv7T0xhAfILuyMOXlhYXd0UEEf9JSYu6c3Z7kZMtscSUoS37W7aj
	LXg67FQniLDtFUl7EgB8ebNtbGO8PORglZLlPp1moUlgANTCvl4EGQWqItN7m7kEB8xvXB
	1el7df/uOSFoQ8kpQMNNYzFjzzpZNhY=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-31-GPhsbbvwNECq87o7TKl40w-1; Sat, 06 Aug 2022 21:15:09 -0400
X-MC-Unique: GPhsbbvwNECq87o7TKl40w-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com [10.11.54.5])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id E692E811E75;
	Sun,  7 Aug 2022 01:15:07 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 7E69490A04;
	Sun,  7 Aug 2022 01:14:59 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id C90F91946A54;
	Sun,  7 Aug 2022 01:14:58 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3696.120.41.1.1\))
Subject: Re: Cant require password at log on
Date: Sat, 6 Aug 2022 21:05:51 -0400
References: <mailman.1366.1659635417.2505309.blinux-list@redhat.com>
 <mailman.39795.1659721113.111204.blinux-list@redhat.com>
To: Linux for blind general discussion <blinux-list@redhat.com>
In-Reply-To: <mailman.39795.1659721113.111204.blinux-list@redhat.com>
Message-ID: <mailman.40428.1659834898.111202.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 2.79 on 10.11.54.5
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGksClRoYW5rcyBmb3IgdGhlIHNlYXJjaCByZXN1bHRzLCBidXQgbm9uZSBvZiB0aGUgc3RhbmRh
cmQgbWV0aG9kcyB3b3VsZCB3b3JrLgpJIHJlc29sdmVkIGl0IGJ5IHJlbW92aW5nIHR3byBsaW5l
cyBjb250YWluaW5nIHRvIGF1dG8gbG9nIGluIGZyb20gdGhlIGZvbGxvd2luZyBmaWxlLgpFdGMv
bGlnaHRkbS9saWdodGRtLmNvbmYKVGhhbmsgeW91IGZvciB5b3VyIGhlbHAuClJvYgoKPiBPbiBB
dWcgNSwgMjAyMiwgYXQgMTozNyBQTSwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lv
biA8YmxpbnV4LWxpc3RAcmVkaGF0LmNvbT4gd3JvdGU6Cj4gCj4gT24gVGh1LCBBdWcgNCwgMjAy
MiBhdCAxMDo1MCBBTSBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIHdyb3RlOgo+
IAo+PiBEZWFyIExpc3QsCj4+IEkgaW5zdGFsbGVkIExpbnV4IE1pbnQgTWF0ZSAyMS4KPj4gQXQg
aW5zdGFsbGF0aW9uLCBJIGNob3NlIGF1dG9tYXRpYyBzaWduIGluLgo+PiBOb3cgSSB3YW50IHRv
IGNoYW5nZSBpdCB0byByZXF1aXJlIG15IHBhc3N3b3JkIHRvIGxvZyBpbi4KPj4gCj4+IEkgY2Fu
4oCZdCBzZWVtIHRvIGRvIGl0LiBBbnkgc3VnZ2VzdGlvbnM/Cj4+IAo+PiBUaGFua3MsCj4+IFJv
Ygo+PiAKPiAKPiBPbiBodHRwczovL2R1Y2tkdWNrZ28uY29tIEkgc2VhcmNoZWQgZm9yICJsaW51
eCBtaW50IGRpc2FibGUgYXV0b21hdGljCj4gbG9naW4iIGFuZCBnb3QgdGhlc2U6Cj4gaHR0cHM6
Ly9saW51eGhpbnQuY29tL2VuYWJsZS1hdXRvLWxvZ2luLW9uLWJvb3QtbGludXgtbWludC8KPiBo
dHRwczovL2ZyYW1lYm94eGluZG9yZS5jb20vbGludXgvaG93LWRvLWktZGlzYWJsZS1hdXRvLWxv
Z2luLWluLWxpbnV4LW1pbnQuaHRtbAo+IAo+IElmIHlvdSB3YW50IHRvIG1hbnVhbGx5IGVkaXQg
ZmlsZXM6Cj4gaHR0cHM6Ly91bml4LnN0YWNrZXhjaGFuZ2UuY29tL3F1ZXN0aW9ucy80NTU3My9o
b3ctdG8tZGlzYWJsZS1hdXRvLWxvZ2luLWluLWxpbnV4LW1pbnQKPiAKPiBZb3NoaW8KPiBfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IEJsaW51eC1saXN0
IG1haWxpbmcgbGlzdAo+IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPiBodHRwczovL2xpc3RtYW4u
cmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0CgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QK
QmxpbnV4LWxpc3RAcmVkaGF0LmNvbQpodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFu
L2xpc3RpbmZvL2JsaW51eC1saXN0Cg==

