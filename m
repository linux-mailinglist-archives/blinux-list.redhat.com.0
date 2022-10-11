Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 395B55FB47F
	for <lists+blinux-list@lfdr.de>; Tue, 11 Oct 2022 16:25:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1665498324;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=3FPApQzSWyXZ2pdE7RVsmsW5uA/l6pWiaMEO8TzT0FU=;
	b=F5uODUtvmNTblpteg7vKXkfCCtayJSZ7B3Dy1pVo6vIa6IEvntKveqAiwUaTORax8sbHt5
	fyPmHc0UkgrOgJ/Kc4cFo7odrleS8+W8+JDl+yXl1/HrGInQhF53/v0rhfc8he1axQL4bI
	yvpyG1BM/a988zpRSiCLKCFEazQteGU=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-318-M-ArFDqkMcO9ACQc3ezpeA-1; Tue, 11 Oct 2022 10:25:20 -0400
X-MC-Unique: M-ArFDqkMcO9ACQc3ezpeA-1
Received: from smtp.corp.redhat.com (int-mx10.intmail.prod.int.rdu2.redhat.com [10.11.54.10])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 1EE28101E14D;
	Tue, 11 Oct 2022 14:25:19 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 627CE492B08;
	Tue, 11 Oct 2022 14:25:12 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id C0B911946A48;
	Tue, 11 Oct 2022 14:25:11 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Tue, 11 Oct 2022 19:19:52 +0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.2
Subject: Re: New user question
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <mailman.7301.1665480524.6076.blinux-list@redhat.com>
In-Reply-To: <mailman.7301.1665480524.6076.blinux-list@redhat.com>
X-Content-Filtered-By: Mailman/MimeDel 2.1.29
Message-ID: <mailman.6416.1665498310.6074.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.10
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

SGkgU3RldmUsCgpPdGhlciB1c2VycyBtaWdodCBub3QgYWdyZWUgd2l0aCBtZSwgYnV0IEknbSB0
YWxraW5nIGFib3V0IHRoZSAKZXhwZXJpZW5jZXMgSSBoYWQuIEknbSBhIGRldmVsb3BlciB0b28s
IGFuZCBMaW51eCBpcyBhIGRhaWx5IHJvdXRpbmUgZm9yIAptZS4gT3IgSSB3b3VsZCBzYXkgSSBj
YW4ndCBsaXZlIHdpdGhvdXQgYSBMaW51eCBzZXJ2ZXIg8J+YigoKSSBoYWQgdHJpZWQgZGlmZmVy
ZW50wqAgRGlzdHJvcywgYnV0IG5vbmUgb2YgdGhlbSB3b3JrZWQgZm9yIG1lLiAKRXNwZWNpYWxs
eSBJIE1pc3MgdGhlIE5WREEgYW5kIGl0cyBmZWVsIG9uIExpbnV4LiBZZXMsIHRoZXJlIGlzIE9y
Y2EgCmV4aXN0LCBidXQgdGhhdCdzIG5vdCBwcm9kdWN0aW9uIHJlYWR5IEkgZmVlbC4gQnV0IHRo
YXQncyBteSBvYnNlcnZhdGlvbiAKb3RoZXJzIGhhdmUgdGhlaXIgZXhwZXJpZW5jZXMgdG9vIPCf
mIoKCk5vdywgd2hhdCBJJ20gdXNpbmcgcGVyc29uYWxseSBpcyBJIGhhdmUgd2luZG93cyAxMCBQ
cm8gYW5kIFZNV2FyZSAKcGxheWVyIDE2IChOb24tQ29tbWVyY2lhbCBWZXJzaW9uKS4KCkkndmUg
bWFkZSBhIFZNIHVzaW5nIERlYmlhbiAxMS4zIGFuZCBjb25maWd1cmVkIGl0IGFjY29yZGluZyB0
byBteSBuZWVkcyAKYW5kIGNob2ljZXMuIFRoZW4sIEkgZW5hYmxlZCBTU0ggYWNjZXNzIGluIHRo
ZSBWTSBhbmQgbm93IGNhbiBlYXNpbHkgdXNlIAppdCBvdmVyIFNTSCBvbiBteSBXaW5kb3dzIENv
bW1hbmQgUHJvbXB0IGFuZCBTRlRQIHdpdGggRmlsZSBaaWxsYS4KCkFuZCB0aGlzIHdvcmtzIGxp
a2UgYSBjaGFybS4KCkNoZWVycywKCgotLSAKCkFiZHVsbGFoIFp1YmFpcgpDaGllZiBFeGVjdXRp
dmUgT2ZmaWNlciAJTG9nbyA8aHR0cHM6Ly9ibGluZGhlbHAubmV0PgpCbGluZCBIZWxwIFByb2pl
Y3QKSHlkZXJhYmFkClBha2lzdGFuCnQ6ICs5MiAoMCkgMzE3IDM3OTIwMzkgPHRlbDorOTIzMTcz
NzkyMDM5PgplOiBDRU9AQmxpbmRIZWxwLm5ldApCbGluZEhlbHAubmV0IDxodHRwczovL2JsaW5k
aGVscC5uZXQ+IAlGYWNlYm9vayAKPGh0dHBzOi8vZmFjZWJvb2suY29tL2FiZHVsbGFoLnp1YmFp
ci5vZmZpY2lhbD4gTGlua2VkSW4gCjxodHRwczovL2xpbmtlZGluLmNvbS9pbi9hem9mZmljaWFs
PiBUd2l0dGVyIAo8aHR0cHM6Ly90d2l0dGVyLmNvbS9hX3pfb2ZmaWNpYWw+IFdoYXRzQXBwIAo8
aHR0cHM6Ly9hcGkud2hhdHNhcHAuY29tL3NlbmQ/cGhvbmU9OTIzMDMyMzA1Njk4PiBUZWxlZ3Jh
bSAKPGh0dHBzOi8vdC5tZS9hX3pfb2ZmaWNpYWw+IEluc3RhZ3JhbSAKPGh0dHBzOi8vaW5zdGFn
cmFtLmNvbS9hYmR1bGxhaF96dWJhaXJfb2ZmaWNpYWw+CkJhbm5lciA8aHR0cHM6Ly9ibGluZGhl
bHAubmV0PgpUaGUgY29udGVudCBvZiB0aGlzIGVtYWlsIGlzIGNvbmZpZGVudGlhbCBhbmQgaW50
ZW5kZWQgZm9yIHRoZSByZWNpcGllbnQgCnNwZWNpZmllZCBpbiB0aGUgbWVzc2FnZSBvbmx5LiBJ
dCBpcyBzdHJpY3RseSBmb3JiaWRkZW4gdG8gc2hhcmUgYW55IApwYXJ0IG9mIHRoaXMgbWVzc2Fn
ZSB3aXRoIGFueSB0aGlyZCBwYXJ0eSwgd2l0aG91dCBhIHdyaXR0ZW4gY29uc2VudCBvZiAKdGhl
IHNlbmRlci4gSWYgeW91IHJlY2VpdmVkIHRoaXMgbWVzc2FnZSBieSBtaXN0YWtlLCBwbGVhc2Ug
cmVwbHkgdG8gCnRoaXMgbWVzc2FnZSBhbmQgZm9sbG93IHdpdGggaXRzIGRlbGV0aW9uLCBzbyB0
aGF0IGl0IGNhbiBiZSBlbnN1cmVkIAp0aGF0IHN1Y2ggYSBtaXN0YWtlIGRvZXMgbm90IG9jY3Vy
IGluIHRoZSBmdXR1cmUuCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkJsaW51eC1saXN0IG1haWxpbmcgbGlzdApCbGludXgtbGlzdEByZWRoYXQuY29tCmh0
dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QK

