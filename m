Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id A588646DE7C
	for <lists+blinux-list@lfdr.de>; Wed,  8 Dec 2021 23:38:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1639003095;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=3YPWbyMNaFnZfRoW5h8OJuBgOc/0fuVHrF92sqbgD+E=;
	b=Q0chYTSHtEqdAB0caAbi3H81GcwM8cxKSBhB8wmulmXCukqFg0UvioL2aUfOzYN4UabQ5g
	oXghXZ4RBrqHdF+HrBMSDcLQPfI+/EoRsarM8xMkQQZo1zmK3Qq87jtQx7VLB0PSmBbGow
	/Fs3cWtgClBFQHgRutuZDdPZ3SeUSwk=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-571-XAn-h5_uMOWjz5mmNyl0Fw-1; Wed, 08 Dec 2021 17:38:11 -0500
X-MC-Unique: XAn-h5_uMOWjz5mmNyl0Fw-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 9855C81CCB4;
	Wed,  8 Dec 2021 22:38:05 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id F00D56D036;
	Wed,  8 Dec 2021 22:38:04 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 7FBE34BB7B;
	Wed,  8 Dec 2021 22:37:58 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com
	[10.11.54.2])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1B8MbmYU007304 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 8 Dec 2021 17:37:49 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id DDF1C4047279; Wed,  8 Dec 2021 22:37:48 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id D9F324047272
	for <blinux-list@redhat.com>; Wed,  8 Dec 2021 22:37:48 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id C20A7101A529
	for <blinux-list@redhat.com>; Wed,  8 Dec 2021 22:37:48 +0000 (UTC)
Received: from mail-qt1-f174.google.com (mail-qt1-f174.google.com
	[209.85.160.174]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-233-XQ1yuHV2PTq7hTaDbGpyIw-1; Wed, 08 Dec 2021 17:37:46 -0500
X-MC-Unique: XQ1yuHV2PTq7hTaDbGpyIw-1
Received: by mail-qt1-f174.google.com with SMTP id l8so3673415qtk.6
	for <blinux-list@redhat.com>; Wed, 08 Dec 2021 14:37:46 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:to:from:subject:message-id:date:user-agent
	:mime-version:content-transfer-encoding:content-language;
	bh=jidBjQyoyVhE5M3JLg0SuYu2zYuh8u/vmWQkzC78cLg=;
	b=ZAglT7eG8CTWwpqbJUv4itZlj4BhJ9bf9+NfFk87W7L8ieWz5vO327z1xK8ReaEgke
	zX9AzMPJjxGqPJjNGevnZqBJU7dLR+PGguxr/UIjmkA8k2/YzJmudCgeFLaRbYqNXXGR
	//0vEEVJMy3H0xPUPE8HluCfr+XWahvT6YfSerdJsawRN6/43DF5GxLlzNqSx8l1RCq3
	yl4D6qA8P3sZnqwKXCnooWc8/TxaXYSHdxKOv7yeeq9gGTmNkXlJYJZPry+mu6Hz0SDC
	QVl322++C+xVdja9CDYQnlL5qzTHTQQfHckvgNFi6TVC0sQA0+yXR6xSIZWhaKTymvqW
	hV1w==
X-Gm-Message-State: AOAM530JJJeYVW/IB8dnYapi44AKjQukaCXKZnk11+KqtXtzLnQYBgI0
	T1RRBO2N5LFig6FBRCpFDsQb2X3t+KQjCOPp
X-Google-Smtp-Source: ABdhPJwM5cE/K4z/XMaHfL72UKpy2xmFVyBL2R/Fi74EhSS0b6qvVCNWXDI/p9nQDYuSEwsXPQb2gg==
X-Received: by 2002:ac8:5803:: with SMTP id g3mr11668498qtg.317.1639003065848; 
	Wed, 08 Dec 2021 14:37:45 -0800 (PST)
Received: from darkstar.example.slint ([2601:152:4000:330:6a07:15ff:fe1b:961c])
	by smtp.gmail.com with ESMTPSA id m9sm2060073qkn.59.2021.12.08.14.37.44
	for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Wed, 08 Dec 2021 14:37:45 -0800 (PST)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: screen not in text mode on a braille display, how can I put it back
	in text mode?
Message-ID: <08486966-a674-edf1-c39d-759eb107cd7c@gmail.com>
Date: Wed, 8 Dec 2021 17:37:44 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
	Thunderbird/68.12.0
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.2
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

SGkgRnJpZW5kcywKCkkgZG8gbm90IGtub3cgaG93IG1hbnkgb2YgeW91IHVzZSBhIGJyYWlsbGUg
ZGlzcGxheSB3aXRoIGxpbnV4LCBidXQgSSAKbGlrZSBicmFpbGxlLiBJIGFtIHVzaW5nIG15IFZh
cmlvVWx0cmEgNDAgYXMgbXkgYnJhaWxsZSBkaXNwbGF5IHdpdGggbXkgCmxpbnV4LiBJIGhvcGUg
aWYgdGhlcmUgYXJlIGJyYWlsbGUgdXNlcnMgaGVyZSBjYW4gaGVscCBtZSBzb2x2ZSB0aGlzIHB1
enpsZS4KCgpJIG5vdGljZWQgdGhhdCBpZiBJIGJvb3QgdXAgbXkgU2xpbnQgd2l0aCB0aGUgYnJh
aWxsZSBkaXNwbGF5IHR1cm5lZCBvbiAKYW5kIGNvbm5lY3RlZCBpdCB3b3JrcyBiZWF1dGlmdWxs
eSB3ZWxsIHdpdGggbXkgc2NyZWVuIHJlYWRlci4gSG93ZXZlciwgCklmIEkgYm9vdCBteSBtYWNo
aW5lIHdpdGggdGhlIGJyYWlsbGUgZGlzcGxheSBpcyB0dXJuZWQgb2ZmIG9yIApkaXNjb25uZWN0
ZWQsIHdoZW4gSSBjb25uZWN0IGl0IG9yIHR1cm4gaXQgb24sIEkgc2VlIHRoZSBicmx0dHkgNi40
IApjb21lcyB1cCBvbiB0aGUgZGlzcGxheSwgYnV0IGFmdGVyIHRoYXQgSSBjYW4gb25seSByZWFk
IG9uIHRoZSBkaXNwbGF5IApzY3JlZW4gbm90IGluIHRleHQgbW9kZS4gRXZlbiBpZiBJIGtpbGwg
b3JjYSB3aXRoIHRoZSBraWxsYWxsIGNvbW1hbmQgCmFuZCByZXN0YXJ0IG9yY2EsIHRoZSBCcmFp
bGxlIGRpc3BsYXkgb25seSBzaG93cyBzY3JlZW4gbm90IGluIHRleHQgCm1vZGUuwqAgSWYgSSB3
YW50IHRvIHVzZSBicmFpbGxlIEkgYW0gbGVmdCB3aXRoIG5vIG9wdGlvbiBidXQgdG8gcmVib290
IAp0aGUgbWFjaGluZSB3aXRoIHRoZSBicmFpbGxlIGRpc3BsYXkgaXMgdHVybmVkIG9uIGFuZCBj
b25uZWN0ZWQgdG8gbXkgCmxhcHRvcC4KCklzIHRoZXJlIGEgd2F5IG9mIGJlaW5nIGFibGUgdG8g
YWN0aXZhdGUgYnJhaWxsZSBldmVuIGlmIEkgZm9yZ2V0IHRvIAp0dXJuIHRoZSBkaXNwbGF5IG9u
IGFuZCBjb25uZWN0IGl0IHRvIG15IGxhcHRvcCBhZnRlciB0aGUgYm9vdHVwPwoKQ2hlZXJzLAoK
SWJyYWhpbQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
QmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0CkJsaW51eC1saXN0QHJlZGhhdC5jb20KaHR0cHM6Ly9s
aXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdA==

