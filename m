Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 355B563C885
	for <lists+blinux-list@lfdr.de>; Tue, 29 Nov 2022 20:35:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1669750556;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=CmtWgkZ3mOswz675y/5F0xsWN95v46M/jK1Vl6cD0m4=;
	b=iSz+fq+y0NiwhzFHc65vbVS/8A7qGFPPme602ts1Zs+ZsosI5+mmbTLoY2Y/RATTSeH9aC
	H/roEH1Sslb/wdf3KImiuO1JL52u/Zv+LLBIottXK4BZ3mhGPfitvF4m98H7cUbWxLl0ej
	F5nkbrzHyrhsVa0F40BR/Kx5PqCgBp8=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-661-tTZoiEKBOgKwzk8QRlcLcg-1; Tue, 29 Nov 2022 14:35:53 -0500
X-MC-Unique: tTZoiEKBOgKwzk8QRlcLcg-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.rdu2.redhat.com [10.11.54.7])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id DE29E8630CE;
	Tue, 29 Nov 2022 19:35:50 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 0E1C4140EBF5;
	Tue, 29 Nov 2022 19:35:43 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id A9CCE19465A2;
	Tue, 29 Nov 2022 19:35:43 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Tue, 29 Nov 2022 14:35:37 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
Subject: Re: Can a blind person run fedora as a live disk?
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <mailman.2466.1669682524.6928.blinux-list@redhat.com>
 <mailman.2290.1669682675.6931.blinux-list@redhat.com>
In-Reply-To: <mailman.2290.1669682675.6931.blinux-list@redhat.com>
Message-ID: <mailman.2591.1669750542.6931.blinux-list@redhat.com>
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
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

QXMgYSBzaWRlIG5vb3RlLAoKCklmIHlvdSB1c2Ugd29ya3N0YXRpb24sIHlvdSB3aWxsIG5lZWQg
dG8gZG8gc29tZSB0d2Vla2luZyBhbmQgc3dpdGNoIHRvIAp4b3JnIG9yIHRqaGUgYW5hY29uZGEg
d2lsbCBub3Qgc3BlZWsuwqAgVGhlIGZlZG9yYSBhbmFjb25kYSBpcyBiZWluZyAKcmV3cml0b24g
YXMgYSB3ZWIgaW5zdGFsbGVyIHdoaWNoIGF0IGxlYXN0IGY5b3JtIG15IHRlc3RpbmcgZG9lcyBu
b3QgCnNwZWFrLsKgIE5vdCBzdXJlIGlmIHRoaXMgaGFzIHNvbWV0aGluZyB0byBkbyB3aXRoIHRo
ZSB3ZWIgYmFzZSBpdCBpcyAKdXNpbmcsIGJ1dCBpdCBpcyBzdGlsbCBpbiB0ZXN0aW5nLiBUaGFu
a3MuCgoKTWF0dGhldwoKCgpPbiAxMS8yOC8yMDIyIDc6NDQgUE0sIExpbnV4IGZvciBibGluZCBn
ZW5lcmFsIGRpc2N1c3Npb24gd3JvdGU6Cj4gSXQgaXMgc3VwcG9zZWQgdG8gd29yay4gSnVzdCBw
cmVzcyBhbHQrc3VwZXIrcyBhYm91dCBhIG1pbnV0ZSBhZnRlciAKPiB5b3UgYm9vdCBpdC4gWW91
IHNob3VsZCBoZWFyIGl0IHNheSAiU2NyZWVuIHJlYWRlciBvbiIgYW5kIGV2ZXJ5dGhpbmcgCj4g
c2hvdWxkIHN0YXJ0IHRhbGtpbmcgYXQgdGhhdCBwb2ludC4KPgo+IH5LeWxlCj4KPiBfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IEJsaW51eC1saXN0IG1h
aWxpbmcgbGlzdAo+IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPiBodHRwczovL2xpc3RtYW4ucmVk
aGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cj4KCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkJsaW51eC1saXN0IG1haWxpbmcgbGlzdApC
bGludXgtbGlzdEByZWRoYXQuY29tCmh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4v
bGlzdGluZm8vYmxpbnV4LWxpc3QK

