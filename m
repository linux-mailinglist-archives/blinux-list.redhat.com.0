Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id A582E5E7A27
	for <lists+blinux-list@lfdr.de>; Fri, 23 Sep 2022 14:07:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1663934852;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=OP8uoFjwsVrEd0TdUe+vFsXMDKESY5sZH+fAczKr80w=;
	b=Q/0RUtd6ROBWOQOy6/SEvOrwQNyIm64zUyw5FLqTPfXoYOaw7u4cP+wjH+7oB1L4H/gb/d
	yQQrYMbJzMwIaGZXc3AEV5vkJRnAmZDoFq132/MdMKhvotcT6su7XxFkwhaTongCRUInjS
	W5tuQyjq9SvSfqvJxqE32Yu6RiDG938=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-304-ccWFlOirNoW9znff9mzncg-1; Fri, 23 Sep 2022 08:07:29 -0400
X-MC-Unique: ccWFlOirNoW9znff9mzncg-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com [10.11.54.2])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 9BF5B29324BF;
	Fri, 23 Sep 2022 12:07:25 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id DBCF340C958E;
	Fri, 23 Sep 2022 12:07:22 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 460491946A42;
	Fri, 23 Sep 2022 12:07:22 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Fri, 23 Sep 2022 12:00:15 +0000
To: blinux-list@redhat.com
Subject: Re: F 105 crashing, anyone else?
In-Reply-To: <mailman.2117.1663928851.6074.blinux-list@redhat.com>
References: <mailman.1902.1663760173.6083.blinux-list@redhat.com>
 <mailman.2208.1663795326.6077.blinux-list@redhat.com>
 <mailman.2117.1663928851.6074.blinux-list@redhat.com>
Feedback-ID: 26663242:user:proton
MIME-Version: 1.0
Message-ID: <mailman.2704.1663934841.6082.blinux-list@redhat.com>
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

VG8gbWUsIGl0IHNlZW1zIG1vcmUgbGlrZSB0aGUgdGVuZGVuY3kgdG8gY3Jhc2ggdmFyaWVzLgoK
U29tZXRpbWVzLCBJIGNhbiBhY3RpdmF0ZSB0aGUgc2F2ZSBsaW5rIG9uIGEgcGFnZSBmZXcgdGlt
ZXMgaW4gYSByb3csCmFuZCB0aGUgYnJvd3NlciBjcmFzaGVzIGV2ZXJ5IHRpbWUuCgpBbmQgc29t
ZXRpbWVzLCB0aGUgc2FtZSBsaW5rIGNhdXNlcyBubyB0cm91YmxlLCBhbmQgdGhlIHdob2xlIGJy
b3dzaW5nCmlzIGEgY29udGludW91cyBleHBlcmllbmNlLgoKCkJlc3QgcmVnYXJkcwoKClJhc3Rp
c2xhdgoKCkTFiGEgMjMuIDkuIDIwMjIgbyAxMjoyNyBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBk
aXNjdXNzaW9uIG5hcMOtc2FsKGEpOgo+IE5vdCBzdXJlIGhvdyBvciB3aHksIGJ1dCBpdCBhcHBh
cmVudGx5IGZpeGVkIGl0c2VsZiBhbmQgSSBkaWRuJ3Qgc3B5IGEKPiBGRiB1cGRhdGUgaW4gcGFj
bWFuJ3MgbGlzdCBvZiB0aGluZ3MgaXQgdXBkYXRlZCwgdGhvdWdoIEknbSBzdGlsbCB0cnlpbmcK
PiB0byB3b3JrIG91dCB3aHkgaXQgY3Jhc2hlZCBzbyBtdWNoIHRvIGJlZ2luIHdpdGgKPgo+Cj4K
PiBPbiA5LzIxLzIyIDIyOjEyLCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIHdy
b3RlOgo+PiBZZXMsIFVidW50dSBNYXRlIDIyLjA0IDY0LWJpdCwgRmlyZWZveCAxMDUgZnJvbSBN
b3ppbGxhIHBwYS4KPj4KPj4gSSB1c2VkIDEwNCBiZWZvcmUgYW5kIGRvbid0IHJlbWVtYmVyIGl0
IGNyYXNoaW5nIG9uIG15IHN5c3RlbSwgYnV0IDEwNQo+PiBjcmFzaGVzIHF1aXRlIGZyZXF1ZW50
bHkuCj4+Cj4+Cj4+IEVpdGhlciBhZnRlciBhY3RpdmF0aW5nIGEgbGluaywgd2hlbiB0aGUgbmV3
IHBhZ2UgaXMgbG9hZGVkLCBvciBldmVuCj4+IG9uLXBhZ2UgbmF2aWdhdGlvbiBjYW4gY2F1c2Ug
Y3Jhc2hlcyBoZXJlIGFuZCB0aGVyZS4KPj4KPj4KPj4gQmVzdCByZWdhcmRzCj4+Cj4+Cj4+IFJh
c3Rpc2xhdgo+Pgo+Pgo+PiBExYhhIDIxLiA5LiAyMDIyIG8gMTM6MzUgTGludXggZm9yIGJsaW5k
IGdlbmVyYWwgZGlzY3Vzc2lvbiBuYXDDrXNhbChhKToKPj4+IElzIGl0IGp1c3QgbWUsIG9yIGlz
IEZGIDEwNS4wIGNyYXNoaW5nIG1vcmUgdGhhbiAxMDQuWCB1c2VkIHRvPwo+Pj4KPj4+Cj4+PiBP
cGVuIGEgcHJpdmF0ZSB3aW5kb3cgYW5kIHR5cGUgaW4gYSBVUkwsIGNyYXNoCj4+Pgo+Pj4KPj4+
IFRyeSBnb2luZyB0byBhIFVSTCBpbiB0aGUgbWFpbiB3aW5kb3c/IENyYXNoCj4+Pgo+Pj4KPj4+
IEN1cnJlbnRseSBjb21waWxpbmcgRkYgRVNSIHRvIHNlZSBpZiB0aGlzIGZpeGVzIGl0LiBUaGUg
b25seSB0aGluZ3MgaW4KPj4+IHRoZSBjcmFzaCBsb2cgYXJlIHNpZ3NlZyBhbmQgc2lnIGZhdWx0
cyB3aGljaCBhcmUgbm90IGhlbHBmdWwsIHRoZQo+Pj4gY29uc29sZSBvbmx5IGdpdmVzIG1lIGEg
Y2hhbm5lbCBlcnJvciB0byB3b3JrIHdpdGgKPj4+Cj4+PiBfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwo+Pj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4+
PiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4+PiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9t
YWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cj4+Pgo+PiBfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwo+PiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPj4g
QmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+PiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWls
bWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KPiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPiBCbGludXgtbGlz
dEByZWRoYXQuY29tCj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5m
by9ibGludXgtbGlzdAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0CkJsaW51eC1saXN0QHJlZGhhdC5jb20KaHR0
cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo=

