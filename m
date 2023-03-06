Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id B1C1F6AB425
	for <lists+blinux-list@lfdr.de>; Mon,  6 Mar 2023 01:57:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1678064271;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=Vxshvxhfoc0SSEgzvlf5EuLHZCftfdvRWIRmcWKnylg=;
	b=cgFSrvM8lbb8zXZkMdawpLWnS17JHEThhR15+4l0N9MpPbtCB9QSkRsDt2coP15Lfx3it2
	MZvf04cobvKNJl+U8CWFTtWbWEx2fLZzLslbJlkAl6lt6RQ3x+nipZOjQUMaYjVHEltzrZ
	c3QrZ1jtrL4erpPfCRnxEXX0h6dpy5Q=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-509-36GwXAoaP6iLdu30TZq-6A-1; Sun, 05 Mar 2023 19:57:49 -0500
X-MC-Unique: 36GwXAoaP6iLdu30TZq-6A-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com [10.11.54.3])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id C87E8101A55E;
	Mon,  6 Mar 2023 00:57:47 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id AC962112132D;
	Mon,  6 Mar 2023 00:57:38 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 18C8919465B8;
	Mon,  6 Mar 2023 00:57:38 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Mon, 06 Mar 2023 00:57:16 +0000
To: blinux-list@redhat.com
Subject: Re: virtual machine creation
In-Reply-To: <mailman.878.1677608455.3183650.blinux-list@redhat.com>
References: <mailman.878.1677608455.3183650.blinux-list@redhat.com>
Feedback-ID: 26663242:user:proton
MIME-Version: 1.0
Message-ID: <mailman.178.1678064257.1521167.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.3
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGVsbG8sCgpkbyB5b3UgbmVlZCBhbiBleHBsaWNpdCBjb3B5IG9mIHRoZSBtYWNoaW5lPwoKWW91
IGNhbiBjcmVhdGUgYSBXaW5kb3dzIFZNIG9uIExpbnV4IHByZXR0eSBlYXNpbHksIHF1aWNrZW11
OgoKaHR0cHM6Ly9naXRodWIuY29tL3F1aWNrZW11LXByb2plY3QvcXVpY2tlbXUKCgpDYW4gZG8g
aXQgaW4gZmV3IGNvbW1hbmRzLgoKCkJlc3QgcmVnYXJkcwoKClJhc3Rpc2xhdgoKCkTFiGEgMjgu
IDIuIDIwMjMgbyAxOToyMCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIG5hcMOt
c2FsKGEpOgo+IEkgaGF2ZSBhIHdpbmRvd3MgbWFjaGluZSB3aXRoIG9uZSBvciB0d28gcHJvZ3Jh
bXMgSSB3YW50IHRvIGtlZXAgdXNpbmcuCj4gSSBkb3dubG9hZGVkIGEgcHJvZ3JhbSBmcm9tIFZN
d2FyZSB3aGljaCBpcyBzdXBwb3NlZCB0byBjb252ZXJ0IGEgbWFjaGluZSBpbiB0byBhIHZpcnR1
YWwgb25lLgo+IFRoZW4gb25lIGlzIHN1cHBvc2VkIHRvIG1vdmUgdGhlIG5ldyB2aXJ0dWFsIG1h
Y2hpbmUgb24gdG8gYSBsaW51eCBjb21wdXRlciBhbmQgcnVuIGl0Lgo+IFVzaW5nIE4gViBEIEEg
SSBmaW5kIFZNd2FyZSBjb252ZXJ0IENlbnRlciB0byBiZSB1bnVzYWJsZS4KPiBJcyB0aGVyZSB5
ZXQgYW5vdGhlciBtZXRob2QgdGhhdCBjb3VsZCBiZSB1c2VmdWw/Cj4KPiBfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IEJsaW51eC1saXN0IG1haWxpbmcg
bGlzdAo+IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNv
bS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cj4KCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkJsaW51eC1saXN0IG1haWxpbmcgbGlzdApCbGludXgt
bGlzdEByZWRoYXQuY29tCmh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGlu
Zm8vYmxpbnV4LWxpc3QK

