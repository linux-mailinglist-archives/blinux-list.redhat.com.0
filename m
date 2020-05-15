Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	by mail.lfdr.de (Postfix) with ESMTP id 2EA5D1D47D8
	for <lists+blinux-list@lfdr.de>; Fri, 15 May 2020 10:11:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1589530318;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=OUSw4NT3drXyzfKmRMqA2GU5t+aG7pN2D4PA3Cut7e0=;
	b=bfqspW4xVR1wxODmnRvQxhb598WYKI91ZjhVzQTOfkiKpuXFpksgLQSidJhBTB/mTNe9/+
	TlOeFCNni/kDu+lOIp0fwq193qMFzSL75lhajv3cRJKjR8cNBF9JQYl/jMwW+kv1H1UcKU
	wxnODsOB1lSYxQnt8SC6JNUli+PqmzY=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-30-jIhZJyT3NH6ZAWvVMcnquA-1; Fri, 15 May 2020 04:11:55 -0400
X-MC-Unique: jIhZJyT3NH6ZAWvVMcnquA-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 22A7B1800D4A;
	Fri, 15 May 2020 08:11:51 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 9B0BD46;
	Fri, 15 May 2020 08:11:48 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 96ED14E9BC;
	Fri, 15 May 2020 08:11:37 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 04F8BSSF001722 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 15 May 2020 04:11:28 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 4A6C5106B44C; Fri, 15 May 2020 08:11:28 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 3DF67106B44A
	for <blinux-list@redhat.com>; Fri, 15 May 2020 08:11:25 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 2E1BD80CDB0
	for <blinux-list@redhat.com>; Fri, 15 May 2020 08:11:25 +0000 (UTC)
Received: from mail-lj1-f178.google.com (mail-lj1-f178.google.com
	[209.85.208.178]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-274-Om2Rc6oXPNCY16P9R6hldA-1; Fri, 15 May 2020 04:11:22 -0400
X-MC-Unique: Om2Rc6oXPNCY16P9R6hldA-1
Received: by mail-lj1-f178.google.com with SMTP id w10so1276719ljo.0
	for <blinux-list@redhat.com>; Fri, 15 May 2020 01:11:22 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:to:from:subject:message-id:date:user-agent
	:mime-version:content-transfer-encoding:content-language;
	bh=2Efio/uPRTJLywBv8YM6xrn+mcVMqR4XT5tWuwJTR3U=;
	b=toES3jB0ywTSJeJPEIhg5bgidej9KrRYj89HzqhyrUIaUhxt7XESzi0SGIBzSD7EvR
	wiRVVEklBbvOe+M9s7UAJY/rWlHt5pHy2GeqErXQHNAevy6XWyYAU7SU2DyHEnpyVmbl
	ITkWG6TIMaZCkeDc4xOlaryC68k590dXKltaa+GADNBw40gl4JEMfWIImlPK2BzGvTID
	R8uq4AUxLhP1TBBWMNRaSQB8rTxpy40FDmJPRa6gBPqVcTNHRps3qIbGYJWhHhuB+TFw
	5YzJGEKRRbVgYY0n7fry1vOE+8XYU5jcUwWWqK4sg/ekT08sA9PC1ou1NDrqGEzP00DU
	VhfQ==
X-Gm-Message-State: AOAM532B0rmVUvUXim69IyQVcnYNiIzBLte1/LJhVHAXnufRphH9HZvk
	1kckbitgug8ETUAmmZFQ9e8WxXIS
X-Google-Smtp-Source: ABdhPJzrkJLvkz5IJl7gs2HeHLlamyHu4WS/ua3VnWXW7hYOQh4zPDfL4ITW8iPpItBWufqpDlfceA==
X-Received: by 2002:a2e:9905:: with SMTP id v5mr1503145lji.237.1589530280613; 
	Fri, 15 May 2020 01:11:20 -0700 (PDT)
Received: from [192.168.0.14] ([45.222.4.120])
	by smtp.gmail.com with ESMTPSA id w10sm717967ljm.24.2020.05.15.01.11.19
	for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Fri, 15 May 2020 01:11:19 -0700 (PDT)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: What to do in Gnome instead?
Message-ID: <4af60c3e-ba1d-10a4-5267-0a188e79ab12@gmail.com>
Date: Fri, 15 May 2020 10:11:14 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
	Thunderbird/68.7.0
MIME-Version: 1.0
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
X-loop: blinux-list@redhat.com
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.12
Precedence: junk
Reply-To: blinux-list@redhat.com
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://www.redhat.com/mailman/options/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <https://www.redhat.com/archives/blinux-list>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://www.redhat.com/mailman/listinfo/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=subscribe>
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Content-Transfer-Encoding: base64

SGkgZXZlcnlvbmUsCgpJIGFtIHVzZSB0byB0aGUgTWF0ZSBkZXNrdG9wIGVudmlyb25tZW50LCBm
b3IgdGhhdCBpcyB3aGF0IEkgdXNlIG9uIGEgCmRhaWx5IGJhc2lzLiBOb3csIGhvd2V2ZXIsIEkg
d291bGQgbGlrZSB0byBnaXZlIEdub21lIGEgZ28sIGhvd2V2ZXIgSSAKaGF2ZSBubyBpZGVhIGhv
dyB0byBmbGFnIHNvbWUgb2YgdGhlIGFwcHMgSSB1c2UsIGZvciBleGFtcGxlLCBTa3lwZSwgCnNw
b3RpZnksIEdvb2dsZS1DaHJvbWUsIGV0Yy4gQXMgeW91IHByb2JhYmx5IG5vdGljZWQsIGFsbCBl
bGVjdHJvbiBhcHBzLgoKSW4gTWF0ZSBJIHdvdWxkIGdvIHRvIHRoZSBtZW51ID4gU3lzdGVtID4g
UHJlZmVyZW5jZXMgPiAiTG9vayBhbmQgRmVlbCIgCiA+ICJNYWluIE1lbnUiIGFuZCBlZGl0IHRo
ZSBhcHAgcHJvcGVydGllcyBjb21tYW5kIGZpZWxkLiBJbiB0aGlzIApleGFtcGxlLCBHb29nbGUt
Q2hyb21lLgoKIi91c3IvYmluL2dvb2dsZS1jaHJvbWUtc3RhYmxlICVVIiBieSBhZGRpbmcgCi0t
Zm9yY2UtcmVuZGVyZXItYWNjZXNzaWJpbGl0eS4gTm93IHRoZSBsaW5lIHJlYWRzOgoiL3Vzci9i
aW4vZ29vZ2xlLWNocm9tZS1zdGFibGUgJVUgLS1mb3JjZS1yZW5kZXJlci1hY2Nlc3NpYmlsaXR5
IgoKSG93IHdvdWxkIEkgZ28gYWJvdXQgZmxhZ2dpbmcgYXBwcyBsaWtlIHNvIGluIHRoZSBHbm9t
ZSBlbnZpcm9ubWVudD8KClRoYW5rcyBzbyBsb25nLgoKLS0gCldhcm0gcmVnYXJkcy9Hcm9ldG5p
cy9IZXJ6bGljaGUgR3LDvMOfZSwKCkJyYW5kdCBTdGVlbmthbXAKClNlbnQgdXNpbmcgVGh1bmRl
cmJpcmQgZnJvbSBVYnVudHUgTWF0ZSAyMC4wNAoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0CkJsaW51eC1saXN0
QHJlZGhhdC5jb20KaHR0cHM6Ly93d3cucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51
eC1saXN0

