Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id 050203C8697
	for <lists+blinux-list@lfdr.de>; Wed, 14 Jul 2021 17:04:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1626275088;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=fl0TlPRPVETdzD6lkDTdyUv1QQrSJ7VV8NP8asPVru4=;
	b=Y2A2U5f9h3yZvythr0UP9q9lyLMy3vw0PLykHkRho/jULzqz94iXyn7oBxGtOOsu+Bh3WL
	hteV6uClBrgOGyFMWqgV/WObXEOtILHGLBw/w1h6Es1OVqF9IM9UrLl+YcgVFa/E9twxlb
	Nf8y6xEAfg9CB1kIFXmlMx5p0k1W2hE=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-8-yv6I92uEOV2yftWlpYPKWA-1; Wed, 14 Jul 2021 11:04:41 -0400
X-MC-Unique: yv6I92uEOV2yftWlpYPKWA-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id DAC5719611A6;
	Wed, 14 Jul 2021 15:04:37 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id C44451893C;
	Wed, 14 Jul 2021 15:04:37 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 9F7E04A702;
	Wed, 14 Jul 2021 15:04:37 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 16EF4XDx008905 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 14 Jul 2021 11:04:33 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 17AFF207AD2C; Wed, 14 Jul 2021 15:04:33 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 12135207AD0B
	for <blinux-list@redhat.com>; Wed, 14 Jul 2021 15:04:27 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 2BB92802E5E
	for <blinux-list@redhat.com>; Wed, 14 Jul 2021 15:04:27 +0000 (UTC)
Received: from mail-lj1-f172.google.com (mail-lj1-f172.google.com
	[209.85.208.172]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-486-ZhjhwxafOTyk1FarDxp6MQ-1; Wed, 14 Jul 2021 11:04:24 -0400
X-MC-Unique: ZhjhwxafOTyk1FarDxp6MQ-1
Received: by mail-lj1-f172.google.com with SMTP id b40so3823514ljf.12
	for <blinux-list@redhat.com>; Wed, 14 Jul 2021 08:04:24 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=tLnHoQeMbPzZ+5robeN4/7BAcRA7nMDfjv8Kfgghp9c=;
	b=r9qeWZ/yy2LWM737/4nawglZs/BODN+4PGz9ghsSzTDyJOrtJoZs1qN6u3bQ4yzRqi
	kABcI6cqWQdwQWb1M5vORJRbY576WRAPoaHbU8Gf114XnKa6/F5zFH5qO754a9hnD2ii
	CvrklKjSXr7VB9c++9dLllZwOZswCSnomMfIkERrgbJRRmIXSEGQvtsjke8ZhHMwWwUt
	lGdVbmzOY2wqGueWk5inWJlEfwIEckgYmb9luzJIERQm8geOS9ny7I2Mmi1Y2UqWzEdf
	6TSqqG9PogdI6w4fwRsQKKVOnWvXXk9p7nyzxKftCEmU25qIv8DKru8xFQOxarWn7izX
	VeuQ==
X-Gm-Message-State: AOAM531DO2l5UNVl+P5sT5PFbDYvDISN9icBRe7kl53//wKAojC4Slib
	pEe2XJCPadsaz9FHy0uJ+ATBeUZIyka6rQ==
X-Google-Smtp-Source: ABdhPJyrFZ60QDxXJXKVndZlJkqpBO8YeMlUA82qTr6eHo9NWHmyXLVsRwziiSykkiPqVc86VGhFyQ==
X-Received: by 2002:a2e:b522:: with SMTP id z2mr5908005ljm.278.1626275062774; 
	Wed, 14 Jul 2021 08:04:22 -0700 (PDT)
Received: from [192.168.1.73] ([91.77.167.245])
	by smtp.gmail.com with ESMTPSA id
	p28sm182836lfo.117.2021.07.14.08.04.22 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Wed, 14 Jul 2021 08:04:22 -0700 (PDT)
Subject: Re: Cloud service
To: blinux-list@redhat.com
References: <1f0192b2-4728-b80f-cbe9-18c30a087e22@gmail.com>
Message-ID: <cd88c34d-8d9b-ef72-070c-3787db40a7b7@gmail.com>
Date: Wed, 14 Jul 2021 18:04:21 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
	Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <1f0192b2-4728-b80f-cbe9-18c30a087e22@gmail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.4
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

MTQuMDcuMjAyMSAxNzo1NCwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiDQv9C4
0YjQtdGCOgo+IEhpLAo+Cj4gd2hlbiBJIHVzZSBXaW5kb3dzLCBJIHVzZSBPbmVkcml2ZS4gSXQg
Y2FuIHN0b3JlIGZpbGVzIG9ubGluZSBhbmQgCj4gZG93bmxvYWQgdGhlbSBvbmx5IGlmIG5lZWRl
ZC4gTm93LCBJIHdhbnQgdG8gZnVsbHkgbWlncmF0ZSB0byBMaW51eCwgCj4gbWF5YmUgdG8gQXJj
aC4gV2hpY2ggY2xvdWQgc3RvcmFnZSBpcyBiZXN0IGZvciBMaW51eCAvIGFjY2Vzc2liaWxpdHk/
IAo+IERyb3Bib3g/IEkgd2lsbCB1c2UgTWF0ZSBkZXNrdG9wLCBiZWNhdXNlIEdub21lIDQwIGlz
IGNhdGFzdHJvcGhpY2FsIAo+IGZvciBtZSBhbmQgSSBuZWVkIHN0b3JlIGZpbGVzIG9ubGluZSBh
bmQgZG9mbmxvYWQgdGhlbSBvbmx5IGlmIG5lZWRlZCAKPiBmZWF0dXJlLgo+Cj4gVGhhbmtzLAo+
CkkgcmVjb21tZW5kIFJjbG9uZVsxXSBpdCBzdXBwb3J0cyBtYW55IGNsb3VkIHByb3ZpZGVycy4K
ClsxXSBodHRwczovL3JjbG9uZS5vcmcvCgo+IFBhdmVsCj4KLS0gClNpbmNlcmVseSwgQWxleGFu
ZGVyLgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQmxp
bnV4LWxpc3QgbWFpbGluZyBsaXN0CkJsaW51eC1saXN0QHJlZGhhdC5jb20KaHR0cHM6Ly9saXN0
bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdA==

