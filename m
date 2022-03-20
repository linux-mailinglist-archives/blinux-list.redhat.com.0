Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id A38324E1C38
	for <lists+blinux-list@lfdr.de>; Sun, 20 Mar 2022 16:14:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1647789241;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=08QCq46cPSVe6/XBwQdCf8uJ4o6lwDrVNkXbl3eo9qc=;
	b=CHjTmkcAjpp69zeEvjBteHE1RcVMa8FQVnJSY2ZSnieAVjrw1AudoOyESWwmp8tfef2Dah
	JWxlpLQ0hENaYMYNya3OD/J9ZHgYYC3x8qWqnrRwsx3k0eps1pk/Io7VuySqmoN41yFAFy
	XKtR4H5wiZ69/fxQ4lzAkljJY8nof6E=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-37-xYkxuZOdOw2OD3Du-ve08A-1; Sun, 20 Mar 2022 11:13:53 -0400
X-MC-Unique: xYkxuZOdOw2OD3Du-ve08A-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com [10.11.54.5])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id B5058802803;
	Sun, 20 Mar 2022 15:13:51 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 12D0276F0;
	Sun, 20 Mar 2022 15:13:51 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 76EC31953560;
	Sun, 20 Mar 2022 15:13:50 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Sun, 20 Mar 2022 11:13:39 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.6.2
Subject: Re: OT: alexandria.org
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <mailman.2881.1647623735.111207.blinux-list@redhat.com>
 <mailman.2947.1647624813.111203.blinux-list@redhat.com>
 <mailman.2978.1647627242.111208.blinux-list@redhat.com>
In-Reply-To: <mailman.2978.1647627242.111208.blinux-list@redhat.com>
Message-ID: <mailman.3111.1647789229.111210.blinux-list@redhat.com>
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
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

VGhhbmtzIGZvciBzdWdnZXN0aW5nIHRoYXQuwqAgSSBzdGlsbCBuZWVkIHRvIGdldCB1c2VkIHRv
IHRoZSB3YXkgCmFsZXhhbmRyaWEub3JnIHdvcmtzLCBidXQgdGhpcyBoZWxwZWQuCgoKQWwKCgpP
biAzLzE4LzIyIDE0OjEzLCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIHdyb3Rl
Ogo+IMKgT25lIGRyYXdiYWNrIHNlZW1zIHRvIGJlIHRoYXQgYWx0LWxlZnQtYXJyb3cgZG9lc24n
dCBiYWNrIG1lIG91dCBvZiBhIAo+IHNlYXJjaCByZXN1bHQgYXMgaXQgZG9lcyB1c2luZyBEdWNr
ZHVja2dvLsKgIFNvbWV0aW1lcywgY29udHJvbC13IHdvcmtzIAo+IGluIHN1Y2ggY2FzZXMsIGJ1
dCBpbiB0aGVzZSBpbnN0YW5jZXMgaXQgYnJvdWdodCBtZSBhbGwgdGhlIHdheSBiYWNrIAo+IHRv
IHRoZSBkZXNrdG9wLgo+Cj4KPiBUcnkgaG9sZGluZyB0aGUgc2hpZnQga2V5IHdoaWxlIHlvdSBw
cmVzcyB0aGUgZW50ZXIga2V5IHRvIGFjdGl2YXRlIGEgCj4gcmVzdWx0IGxpbmsuIFRoaXMgc2hv
dWxkIG9wZW4gaXQgaW4gYSBuZXcgd2luZG93LCBzbyB0aGF0IGNvbnRyb2wrdyAKPiB3aWxsIHRh
a2UgeW91IGJhY2sgdG8gdGhlIHJlc3VsdCBwYWdlIGluc3RlYWQgb2YgdGhlIGRlc2t0b3AuIEhv
cGUgCj4gdGhpcyBoZWxwcy4KPgo+IH5LeWxlCj4KPiBfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwo+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+IEJsaW51
eC1saXN0QHJlZGhhdC5jb20KPiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xp
c3RpbmZvL2JsaW51eC1saXN0CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKQmxpbnV4LWxpc3RAcmVkaGF0LmNv
bQpodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0
Cg==

