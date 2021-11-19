Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E6A54576D7
	for <lists+blinux-list@lfdr.de>; Fri, 19 Nov 2021 20:02:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1637348544;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=O4ibmHcJ+MrDlZpD7jL79Uvo4yu+DrB1xmJCzCVNPUY=;
	b=T5CEvzDbS/pCmvzxBmsRDVX2BGXvljtdH9TEOq/ddSQxJsipFFMn7tPkZDLllp/5wq3qC4
	Y+Jd9S4FCeECSWqT21+2U4v+KrVQqxDftIsGEP0xulAt2AV3aAsruxaxRCf2imUsalUod2
	5dRCyYs3BUDRetOsKnEEB1MZ1OrpTY4=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-192-fLs65U51OimD6nYfCPRSkQ-1; Fri, 19 Nov 2021 14:02:20 -0500
X-MC-Unique: fLs65U51OimD6nYfCPRSkQ-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 3496E802E29;
	Fri, 19 Nov 2021 19:02:16 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id A43D45D9DE;
	Fri, 19 Nov 2021 19:02:14 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 560611832E81;
	Fri, 19 Nov 2021 19:02:06 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com
	[10.11.54.1])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1AJJ20Kr006379 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 19 Nov 2021 14:02:00 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 82AFD40CFD15; Fri, 19 Nov 2021 19:02:00 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 7D2D740CFD14
	for <blinux-list@redhat.com>; Fri, 19 Nov 2021 19:02:00 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 60A408032EB
	for <blinux-list@redhat.com>; Fri, 19 Nov 2021 19:02:00 +0000 (UTC)
Received: from mail-qk1-f174.google.com (mail-qk1-f174.google.com
	[209.85.222.174]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-63-hzHeA4YJNL-CB-MTHdj4VQ-1; Fri, 19 Nov 2021 14:01:58 -0500
X-MC-Unique: hzHeA4YJNL-CB-MTHdj4VQ-1
Received: by mail-qk1-f174.google.com with SMTP id q64so11223485qkd.5
	for <blinux-list@redhat.com>; Fri, 19 Nov 2021 11:01:58 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=wRMaAtoi80/Daa015Y+Gkc1fuZnZMXVlcsQ7S8ROqnI=;
	b=1JxLHItO2tF8ZUwd3vzJ/rGATY6w6k6M6X8AJg+zHJLfIWC3fZjwzCSg9SzMMdUzjs
	TPyIh7Qr5xbDHsYfqVSG6JU1Jf4YD9HyzzzqulIY/VkUxm443VL6pEsdTtWB9yT1aaXh
	NDoFQgRKS/6dF4fXxrWd+dtjcMVXOTnCluw8sHb6zOjKzDO9KyIFpDkqaF+jPYAXfyno
	DIcCjgouIdsFPjWoh3Zx4exN8k617O2z/tWaOlleogFCIW0/NpGQry9+SkHfXwgFWpYa
	kfR8dv+WnWddQXGkpMb9PU25xw5/6oD1rUa2MIEPziiWTvOkOmAPTU1hahoEIflc6rIy
	lpnA==
X-Gm-Message-State: AOAM533MpSXtMMLE7cuSY2OYoSscxrrcBJ/GtCmTWFaK8E8DKJhaVGsV
	LzbOgF614ZJnBAs3cxU/0CDlIPu5P3bFwCqs
X-Google-Smtp-Source: ABdhPJwhnZa9b2xFuhLLunpYwhJS74IfwiKU8X+yNvFuAA2bJKr2KM7THnktTC2ytR3DrUclUEhMFg==
X-Received: by 2002:a05:620a:462b:: with SMTP id
	br43mr29922292qkb.465.1637348518034; 
	Fri, 19 Nov 2021 11:01:58 -0800 (PST)
Received: from darkstar.example.slint ([2601:152:4000:330::11])
	by smtp.gmail.com with ESMTPSA id 196sm265584qkd.61.2021.11.19.11.01.57
	for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Fri, 19 Nov 2021 11:01:57 -0800 (PST)
Subject: Re: looking for Lennix distribution?
To: blinux-list@redhat.com
References: <c28c932c-ef31-339c-ab9f-b875fab8d259@hubert-humphrey.com>
	<a257cb5e-685f-1c7a-b41a-16e42fa74511@gmail.com>
	<8a5e7b3d-2d54-c13f-659f-bd10b23de2b1@hubert-humphrey.com>
	<02c78924-8760-4e5e-d58a-787766c60325@gmail.com>
	<aab6690b-f55f-80d5-2b1f-dfc3aa7f1272@icloud.com>
	<779a43bb-fe1c-6d4a-a7e2-31532308d709@gmail.com>
	<C397260A-A8B2-4479-A3F5-6547EA4A1D8F@icloud.com>
	<fd55f0f8-262a-df02-b0cc-09a61ad3f5ee@googlemail.com>
	<e7a5e2a8-ae3d-296f-c910-acc0df8d2d92@gmail.com>
Message-ID: <c78786a7-1243-3287-6f72-bd85f8d7474c@gmail.com>
Date: Fri, 19 Nov 2021 14:01:56 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
	Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <e7a5e2a8-ae3d-296f-c910-acc0df8d2d92@gmail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.1
X-loop: blinux-list@redhat.com
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.12
Precedence: junk
Reply-To: blinux-list@redhat.com
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://listman.redhat.com/mailman/options/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <https://listman.redhat.com/archives/blinux-list>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://listman.redhat.com/mailman/listinfo/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=subscribe>
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

SSBhbSBub3QgdHJ1bHkgYW4gZXhwZXJ0IG9uIExpbnV4IGFuZCBhY2Nlc3NpYmlsaXR5LiBCdXQg
SSBmb3VuZCBGZWRvcmEgCnRoZSBtb3N0IHByb2JsZW1hdGljIGFtb25nIHRoZSBkaXN0cmlidXRp
b25zIEkgaGF2ZSB0cmllZC4gSSB0cmllZCAKQ29jb251dCwgU2xpbnQsIE1pbnQsIGFuZCBub3cg
ZmVkb3JhLiBIZXJlIGFyZSB0aGUgcHJvYmxlbXMgSSAKZW5jb3VudGVyZWQgd2l0aCBGZWRvcmEs
IHdoaWNoIEkgZGlkIG5vdCBlbmNvdW50ZXIgaW4gdGhlIG90aGVyIG9uZXMgSSAKdHJpZWQuCgpG
aXJzdCwgZHVyaW5nIGluc3RhbGxhdGlvbiwgVGhlIHNwZWVjaCB3YXMgdHVybmVkIG9mZiBhdXRv
bWF0aWNhbGx5IAp3aXRob3V0IHdhcm5pbmcuIEkgd2FzIGxpc3RlbmluZyB0byB0aGUgY291bnRl
ciB0ZWxsaW5nIG1lIDEwIHBlcmNlbnQsIAoyMCBwZXJjZW50IGV0Yy4uLiBhbmQgc3VkZGVubHkg
SSBoZWFyZCB0aGUgbWVzc2FnZSBTY3JlZW4gcmVhZGVyIGlzIG5vdyAKdHVybmVkIG9mZi4gSSB3
YXMgbG9zdC4gSSB3YWl0ZWQgYWJvdXQgdGVuIG1pbnV0ZXMgYW5kIEkgaGl0IGFsdCBmMiBhbmQg
CnR5cGVkIG9yY2EgYW5kIEkgaGl0IGVudGVyIGFuZCB0aGUgc2NyZWVuIHJlYWRlciBjYW1lIGJh
Y2sgb24uIEkgbW92ZWQgCmFyb3VuZCB0aGUgc2NyZWVuIHRvIGRpc2NvdmVyIHRoYXQgdGhlIGlu
c3RhbGxhdGlvbiB3YXMgY29tcGxldGUgYW5kIEkgCnNob3VsZCByZWJvb3QgdGhlIHN5c3RlbS4g
TG9zaW5nIHNwZWVjaCBkdXJpbmcgaW5zdGFsbGF0aW9uIGlzIG5vdCAKcmVhbGx5IGEgZ29vZCB0
aGluZyBmb3IgYSBibGluZCB1c2VyLgoKU2Vjb25kIEkgY291bGQgbm90IGFjdGl2YXRlIEJyYWls
bGUgYXQgYWxsLiBObyBtYXR0ZXIgd2hhdCBJIHRyaWVkLCAKQnJhaWxsZSBzaW1wbHkgaXMgbm90
IGFjdGl2ZSBvbiBteSBmZWRvcmEgbWF0ZS4KClRoaXJkLCBJIHRyaWVkIHRvIGRvIHRoZSB1cGRh
dGUgb24gYSB0ZXJtaW5hbCwgYW5kIGhlcmUgYWdhaW4sIGluIHRoZSAKbWlkZGxlIG9mIHRoZSBw
cm9jZXNzLCBJIGxvc3Qgc3BlZWNoLiBTbyBJIGxlZnQgdGhlIGNvbXB1dGVyIG9uIGFsbCAKbmln
aHQgdG8gY29tcGxldGUgdGhlIHVwZGF0ZSwgYW5kIHRoaXMgbW9ybmluZyBJIHJlYm9vdGVkIHRo
ZSBzeXN0ZW0gdG8gCmdldCB0aGUgc3BlZWNoIGJhY2sgb24uIENsZWFybHkgdGhlcmUgaXMgYSBw
cm9ibGVtIHdpdGggdGhlIHNjcmVlbiAKcmVhZGVyIG9uIG15IHZlcnNpb24gb2YgRmVkb3JhIG1h
dGUsIHdoaWNoIGlzIEkgYmVsaWV2ZSB2ZXJzaW9uIDM1LgoKVGhlIGZvdXJ0aCBwcm9ibGVtIGhh
cyB0byBkbyB3aXRoIGNoYW5naW5nIG15IGJpb3MgYm9vdC11cCBzZXR0aW5ncy4gSSAKZG8gbm90
IGxpa2UgYW55IHN5c3RlbSB0aGF0IG1lc3MgdXAgd2l0aCBteSBib290IHVwIHNldHRpbmdzLiBX
aGVuIEkgCmluc3RhbGxlZCBpdCwgSSBhc3N1bWVkIHRoYXQgRmVkb3JhIHdvdWxkIG5vdCBjaGFu
Z2UgYW55IG9mIG15IHN5c3RlbSAKc2V0dGluZ3MsIHNpbmNlIEkgaW5zdGFsbGVkIGl0IG9uIGFu
IGV4dGVybmFsIGRyaXZlLiBJIGhvcGUgdGhlIHRlYW0gd2hvIAp3b3JrcyBvbiBGZWRvcmEncyBh
Y2Nlc3NpYmlsaXR5IHdpbGwgdGFrZSBzdWNoIHNpdHVhdGlvbnMgaW50byAKY29uc2lkZXJhdGlv
bi4KCkZlZG9yYSBpcyBwcm9iYWJseSBhIGdyZWF0IHN5c3RlbSwgYnV0IEkgYW0gbm90IHN1cmUg
dGhhdCBpdCBpcyB0aGUgYmVzdCAKaW4gdHVybXMgb2YgYWNjZXNzaWJpbGl0eS4KCkZvciB0aGUg
dGltZSBiZWluZywgSSBhbSBnb2luZyB0byBzdGljayB3aXRoIHNsaW50LiBJIG5ldmVyIGVuY291
bnRlcmVkIAphbnkgYWNjZXNzaWJpbGl0eSBpc3N1ZXMgaW4gc3BlZWNoIG9yIGJyYWlsbCB1c2lu
ZyBpdC4KCk9uIDExLzE5LzIxIDExOjQxIEFNLCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNj
dXNzaW9uIHdyb3RlOgoKPiBXaGF0J3MgbW9yZSwgaXQncyBiYXNlZCBvbiB0aGUgbG9uZy1zdGFi
bGUgVWJ1bnR1Lgo+Cj4KPiAtRGF2ZcKgIEguCj4KPgo+Cj4gT24gMTEvMTkvMjEgMTE6MzggQU0s
IExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gd3JvdGU6Cj4+IGl0IGlzIHZlcnkg
c2ltcGxlLiBJIGxvdmUgTWludCBiZWNhdXNlIHRoZXJlIGlzIG5vIHNuYXAgYWN0aXZhdGVkCj4+
IHdoaWNoIEkgZG9uJ3QgbGlrZS4gT25lIGNhbiBzYXk6IE1pbnQgaXMgYW4gVWJ1bnR1IHdpdGhv
dXV0IHNuYXAuCj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KPiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4g
aHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQmxpbnV4LWxp
c3QgbWFpbGluZyBsaXN0CkJsaW51eC1saXN0QHJlZGhhdC5jb20KaHR0cHM6Ly9saXN0bWFuLnJl
ZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdA==

