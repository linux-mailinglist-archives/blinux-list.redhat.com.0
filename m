Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id DD0CE750F8C
	for <lists+blinux-list@lfdr.de>; Wed, 12 Jul 2023 19:21:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1689182508;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=eEiuevZ65V2bs0u2qlt6snp8YdqBoeexlKgTeRRBMIM=;
	b=alQzud1IJf7X58+SJYEmCSbFgs38QTtfWk0lTM6YvBkCyIgBo/2xbElJgDUCCJ9l4/SHow
	xrsoDqfT/+Ie8flnV1SUGqOlFKYEmwEJSgdDud/J5GOxrEr5+GlvowM39D6lzCPgmlkWp3
	x2vIBNgrCGaGOEpOzbJDE2RMqPX9GQs=
Received: from mimecast-mx02.redhat.com (66.187.233.73 [66.187.233.73]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-68-zZ8DoHZONEOrurkHGYMKbw-1; Wed, 12 Jul 2023 13:21:44 -0400
X-MC-Unique: zZ8DoHZONEOrurkHGYMKbw-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com [10.11.54.3])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id BC73838008B9;
	Wed, 12 Jul 2023 17:21:42 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 2BBC4111E3EA;
	Wed, 12 Jul 2023 17:21:36 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id D15FF19465B3;
	Wed, 12 Jul 2023 17:21:26 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Wed, 12 Jul 2023 13:21:13 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
To: blinux-list@redhat.com
References: <mailman.481.1689114375.3826223.blinux-list@redhat.com>
Subject: Re: inclusive hardware testing tools?
In-Reply-To: <mailman.481.1689114375.3826223.blinux-list@redhat.com>
Message-ID: <mailman.930.1689182485.3826222.blinux-list@redhat.com>
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
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

Ck9uIDExLzcvMjMgMTg6MTcsIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gd3Jv
dGU6Cj4gS2FyZW4gTGV3ZWxsZW4gd2l0aCBhIGNyZWF0aXZlIHF1ZXN0aW9uIGZvciBmb2xrcyB3
aG/CoCB3b3JrIHdpdGggCj4gaGFyZHdhcmUuCj4gRG8geW91IGhhdmUgYSB0b29sIHRoYXQgbGV0
cyB5b3UgdGVzdCB0aGUgaW50ZWdyaXR5IG9mIHRoaW5ncyBsaWtlIAo+IG1vdGhlcmJvYXJkcyBh
bmQgdGhlIGxpbms/Cj4gZHVlIHRvIGEgcG93ZXIgaXNzdWUgd2l0aCBteSBuZXcgYXBhcnRtZW50
LCBzdXJnZXMgYXJlIGltcGFjdGluZyAKPiB0aGluZ3MgbGlrZSBzZXJpYWwgcG9ydHMgYW5kIHNv
IGZvcnRoLgo+CkhhdmUgeW91IGNvbnNpZGVyZWQgcGxhY2luZyBhbGwgb2YgdGhlIHZhbHVhYmxl
IGhhcmR3YXJlIGJlaGluZCBhbiAKVW5pbnRlcnJ1cHRpYmxlIFBvd2VyIFN1cHBseSAoVVBTKT8K
ClRoZSBnb29kIG9uZXMgY2FuIGJlIGNvbnRyb2xsZWQgYnkgYSBMaW51eCBzeXN0ZW0sIGFuZCBz
aG91bGQgbG9nIGV2ZW50cyAKc3VjaCBhcyBwb3dlciBsaW5lIHZvbHRhZ2VzIHRoYXQgYXJlIGFi
b3ZlIG9yIGJlbG93IHJlYXNvbmFibGUgbGltaXRzLiAKT2YgY291cnNlLCB0aGV5IHByb3RlY3Qg
Y29ubmVjdGVkIGRldmljZXMgYWdhaW5zdCB0aGVzZSBmbHVjdHVhdGlvbnMgYnkgCnN3aXRjaGlu
ZyB0byBhIGJhdHRlcnkuIENvbXBsZXRlIGxvc3Mgb2YgcG93ZXIgaXMgYWxzbyBwcm90ZWN0ZWQg
YWdhaW5zdCAKZm9yIGFzIGxvbmcgYXMgdGhlIGJhdHRlcnkgbGFzdHMuCgpJIGRvbid0IGtub3cg
d2hvIG1hbnVmYWN0dXJlcyB0aGUgaGlnaC1xdWFsaXR5IFVQUyBkZXZpY2VzIHRoZXNlIGRheXMg
b3IgCndoYXQgdG8gcmVjb21tZW5kLgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0CkJsaW51eC1saXN0QHJlZGhh
dC5jb20KaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgt
bGlzdAo=

