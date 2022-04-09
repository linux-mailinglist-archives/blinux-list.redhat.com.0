Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id B06724FAA83
	for <lists+blinux-list@lfdr.de>; Sat,  9 Apr 2022 21:39:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1649533173;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=hPl83d81xQsBM6AFXy0OlMQ5LN7lq71UxRiA25nprrY=;
	b=H3KzflFkdf7+dk3AAIm6wnBcy2njxW/cFQIJ73GkgJhD+WgxLgO07NO6rNMyvigHYfethO
	qhyCcW/M1I2gF4X+vB7mTuqvByyAcy76eHHoL1TWsmiKYBbK87J7s18wkrSx0eP495Sh8v
	q+P+qoOTGjBu0CjGYDw+3XExtk8TdbM=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-496-pagVs26XPFWFBcw7hn8Jyg-1; Sat, 09 Apr 2022 15:39:31 -0400
X-MC-Unique: pagVs26XPFWFBcw7hn8Jyg-1
Received: from smtp.corp.redhat.com (int-mx10.intmail.prod.int.rdu2.redhat.com [10.11.54.10])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 1B779185A794;
	Sat,  9 Apr 2022 19:39:29 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 734D5403173;
	Sat,  9 Apr 2022 19:39:23 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 55C811940343;
	Sat,  9 Apr 2022 19:39:20 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Mime-Version: 1.0 (1.0)
Subject: Re: Dragonfm questions/NNN query
Date: Sat, 9 Apr 2022 21:39:09 +0200
References: <mailman.7310.1649524421.111205.blinux-list@redhat.com>
In-Reply-To: <mailman.7310.1649524421.111205.blinux-list@redhat.com>
To: blinux-list@redhat.com
X-Content-Filtered-By: Mailman/MimeDel 2.1.29
Message-ID: <mailman.7541.1649533159.111208.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.10
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SG93ZHksCgpIdSBtaXNzaW5nIGlub3RpZnk/IFN0cmFuZ2UsIGJ1dCBweXRob24tcHlpbm90aWZ5
IGlzIGEgaGFyZCBkZXBlbmRlbmN5IGluIHRoZSBQS0dCVUlMRC4gIElzIHRoaXMgdGhlIHdyb25n
IHBhY2thZ2U/IEnigJhtIGN1cnJlbnRseSBub3QgYXQgaG9tZS4gTWF5YmUgeW91IHdhbnQgdG8g
Y2hlY2s/IE90aGVyd2lzZSBpIHdpbGwgY2hlY2sgbGF0ZXIuCgpXZWxsIHRoZXJlIGlzIGN1cnJl
bnRseSBub3QgbXVjaCBkb2N1bWVudGF0aW9uLiBBbGwgaSBoYXZlIGlzIGluIG15IGJsb2c6Cgpo
dHRwczovL3d3dy5wYXRyZW9uLmNvbS9wb3N0cy82NDkwNDIxNwoKQnV0IGlmIHlvdSBoYXZlIHF1
ZXN0aW9ucywganVzdCBhc2suCgpkcmFnb25GTSBpcyBsb29raW5nIGluIGV0YyBmb3IgaXRzIHNl
dHRpbmdzIGJ5IGRlZmF1bHQuIFlvdSBjYW4gY29weSB0aGUgc2V0dGluZ3MgZmlsZSB0byB5b3Vy
IGhvbWUgZm9sZGVyIHRvIG92ZXJ3cml0ZSBpdCBwZXIgdXNlciAoc2VlIHBhdGggaW4gYmxvZywg
dGhlcmUgaXMgdGhlIHBhdGggc29tZW9uZSBhdCB0aGUgZW5kLCBpZyB5b3UgbmVlZCBoZWxwIGhl
cmUgaSBjb21lIGluIGFzIHNvb24gYXMgaSBhcnJpdmUgYXQgaG9tZSkKCldlbGwgZHJhZ29uRk0g
d2FzIGRlc2lnbmVkIGZvciBzaW1wbGljaXR5IGJ1dCBpcyB2ZXJ5IGVhc3kgdG8gZXh0ZW5kLiBG
ZWVsIGZyZWUgdG8gdXNlIGl0LiBJZiB5b3UgbWlzcyBhbiBpbXBvcnRhbnQgZmVhdHVyZSBvciBm
b3VuZCBhIGJ1ZywganVzdCBsZXQgbWUga25vdy4KCkNoZWVycyBjaHJ5cwpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpCbGludXgtbGlzdCBtYWlsaW5nIGxp
c3QKQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQpodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWls
bWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cg==

