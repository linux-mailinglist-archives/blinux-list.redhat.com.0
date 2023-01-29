Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C87A6802DE
	for <lists+blinux-list@lfdr.de>; Mon, 30 Jan 2023 00:11:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1675033915;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=gjM/Pn0oN6sw9yF/tcQ46JXlkud00R0bacCBeP8Gv0o=;
	b=Di6BAHO15GcXiWCPJCz03FopdMDjppRjPd3BaTcLLTx2L2ga8FcGnuo+x+Ph6GPrIia+GA
	fpapjWSzJnklOwD2EtZqtReGhf0QoA7oTolf0Ok4LEVnfCiKZNsao5mN+ZbuGdQGN2Gj45
	YdcxcB3Aj65SmgVw8vLAMOroRG0f3Gk=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-134-HeeRYbHkMA2cGI76GvI_OA-1; Sun, 29 Jan 2023 18:11:51 -0500
X-MC-Unique: HeeRYbHkMA2cGI76GvI_OA-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com [10.11.54.3])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 2BB62185A78B;
	Sun, 29 Jan 2023 23:11:50 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 1146B1121314;
	Sun, 29 Jan 2023 23:11:50 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 91E2C1946595;
	Sun, 29 Jan 2023 23:11:49 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Sun, 29 Jan 2023 18:11:40 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re: Twitter alternatives for the blind community?
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <mailman.2126.1674833824.8175.blinux-list@redhat.com>
 <mailman.2028.1674835913.8171.blinux-list@redhat.com>
 <mailman.2120.1674865746.8168.blinux-list@redhat.com>
 <mailman.2132.1675027863.8173.blinux-list@redhat.com>
 <mailman.2140.1675028856.8176.blinux-list@redhat.com>
 <mailman.2247.1675032356.8168.blinux-list@redhat.com>
In-Reply-To: <mailman.2247.1675032356.8168.blinux-list@redhat.com>
Message-ID: <mailman.2138.1675033908.8172.blinux-list@redhat.com>
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

QWNjb3JkaW5nIHRvIEthcmVuOgo+IEkgY2Fubm90IHVzZSBPcmNhLCBiZWNhdXNlIHRoZSBzcGVl
Y2ggc3ludGhlc2lzIGNob3NlbiBmb3IgdGhlIHByb2dyYW0gCj4gYXQgdGhlwqAgdmVyeSBsZWFz
dCBjYXVzZXMgZGl6emluZXNzIGZvciBtZSwgYW5kIGF0IHdvcnNlIHJpc2tzwqAgCj4gZXBpc29k
ZXMgdGhhdCBtaXJyb3IgdGhvc2UgZXhwZXJpZW5jZWQgYnkgc29tZcKgIHdobyBtYW5hZ2UgZXBp
bGVwc3kuCgoKT3JjYSB1c2VzIHNwZWVjaC1kaXNwYXRjaGVyLCB3aGljaCBoYXMgYSBudW1iZXIg
b2Ygc3BlZWNoIHN5bnRoZXNpemVycyAKYW5kIHZvaWNlcyBhdmFpbGFibGUuIEJlY2F1c2Ugb2Yg
dGhlIGFic3RyYWN0aW9uIGF2YWlsYWJsZSBmcm9tIApzcGVlY2gtZGlzcGF0Y2hlciwgYXMgd2Vs
bCBhcyB0aGUgbnVtYmVyIG9mIHZvaWNlcyBhdmFpbGFibGUgYW5kIHRoZSAKcmVsYXRpdmUgZWFz
ZSBvZiBhZGRpbmcgbmV3IG9uZXMgdmlhIHRoZSBnZW5lcmljIG1vZHVsZSwgdGhpcyBpcyBhIApu
b24taXNzdWUuCgoKPiBZb3UgY2Fubm90IGJlIGV4cGVydCBvbiBhbGwgdGhlIHdheXPCoCB0aGUg
aHVtYW4gYm9keSBwZXJzb25pZmllcywgCj4gbWFraW5nIHN1Y2jCoCBhIGJsYW5rZXQgc3RhdGVt
ZW50IHNvbWV3aGF0IGNvbmNlcm5pbmcuCgoKSSBtYWRlIG5vIGJsYW5rZXQgc3RhdGVtZW50cywg
YW5kIHlvdSBhcmUgYWxzbyBub3QgYW55IGtpbmQgb2YgZXhwZXJ0LgoKCj4gSG93IGRvZXMgdGhp
cyBkaWZmZXIgZnJvbSB0aG9zZSBzcGVha2luZyBvZiBhIGJsaW5kIGNvbW11bml0eT8KCgpBZ2Fp
biwgSSBtYWRlIG5vIGJsYW5rZXQgc3RhdGVtZW50cywgSSBzaW1wbHkgcG9pbnRlZCBvdXQgdGhl
IGZhY3QgdGhhdCAKdXNlIG9mIGEgbW9yZSB2ZXJzYXRpbGUgc2NyZWVuIHJlYWRpbmcgYXBwbGlj
YXRpb24gYWZmb3JkcyBhY2Nlc3MgdG8gCm1vcmUgcmVjZW50IHRlY2hub2xvZ2llcyBhbmQgYWxs
b3dzIGZvciBlYXNpZXIgbmF2aWdhdGlvbiBvZiB3ZWJzaXRlcyAKYW5kIG90aGVyIGFwcGxpY2F0
aW9ucyB0aGF0IGlzIHNlcmlvdXNseSBsYWNraW5nIGluIHRleHQtb25seSAKYXBwbGljYXRpb25z
IG9mIGFsbCB0eXBlcy4KCgo+IGFzIGZvciB0aGXCoCBkZWZpbml0aW9uIG9mIGFjY2Vzc2libGUs
IGl0cyBhIHczYyBvbmUuwqAgU3BlY2lmaWNhbGx5IAo+IHRoYXQgdG9vbHMgbXVzdCBiZSBicm93
c2VyIGRldmljZSwgYW5kIHVzZXIgYWdlbnQgYWdub3N0aWMuCgoKVGhlIFczQyB3YXMgYW5kIHN0
aWxsIGlzIGludm9sdmVkIGluIEphdmFTY3JpcHQgYW5kIEhUTUw1IGFjY2Vzc2liaWxpdHkuIApU
aGVzZSBhcmUgY3VycmVudCB3ZWIgc3RhbmRhcmRzIHRoYXQgaGF2ZSBtdWNoIHRlc3RpbmcgYW5k
IGRldmVsb3BtZW50IAppbnB1dCBmcm9tIHRoZSBXM0MgYW1vbmcgb3RoZXJzLiBUaGVyZSBhcmUg
YWxzbyBhY2Nlc3NpYmlsaXR5IHNwZWNpZmljIApzdGFuZGFyZHMgYnVpbHQgdXBvbiB0aGVzZSBs
YXRlc3QgdmVyc2lvbnMgb2Ygd2ViIHRlY2hub2xvZ2llcywgYW5kIEkgCmtub3cgb2Ygbm8gdGV4
dC1iYXNlZCB3ZWIgYnJvd3NlciB0aGF0IGhhcyBiZWVuIGFibGUgdG8ga2VlcCB1cCB3aXRoIAp0
aGVtLiBFdmVuIHczbSBpdHNlbGYgaXMgb2xkIGFuZCBsYXJnZWx5IHVubWFpbnRhaW5lZCwgYW5k
IGRvZXMgbm90IHRha2UgCmludG8gYWNjb3VudCB0aGUgbGF0ZXN0IHN0YW5kYXJkcyBhbmQgcmVm
aW5lbWVudHMgbWFkZSBldmVuIGJ5IHRoZSBXM0MuIApTbyBvbmNlIGFnYWluLCB5b3VyIGNob2lj
ZSBpcyB5b3VyIGNob2ljZSwgYnV0IGlmIGl0IGNhbid0IGtlZXAgdXAgd2l0aCAKY3VycmVudCB0
ZWNobm9sb2dpZXMgb3IgY29tcGx5IHdpdGggY3VycmVudCBhY2Nlc3NpYmlsaXR5IHN0YW5kYXJk
cywgeW91IAp3aWxsIG5hdHVyYWxseSBsb3NlIHBsZW50eSBvZiBhY2Nlc3MgYXMgdGVjaG5vbG9n
eSBhbmQgZXZlbiB0aGUgCmRlZmluaXRpb24gb2YgYWNjZXNzaWJpbGl0eSBldm9sdmUuCgp+S3ls
ZQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQmxpbnV4
LWxpc3QgbWFpbGluZyBsaXN0CkJsaW51eC1saXN0QHJlZGhhdC5jb20KaHR0cHM6Ly9saXN0bWFu
LnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo=

