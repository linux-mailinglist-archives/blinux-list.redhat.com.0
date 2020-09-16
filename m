Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 9527826CFB5
	for <lists+blinux-list@lfdr.de>; Thu, 17 Sep 2020 01:43:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1600299810;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=nYIzUPsKNjdLnG0l1Ki5Mr2tK/4MX6yHYJtANOUkU+Q=;
	b=UOCF9liw8w6GnHyDpP0A+gPZfACpocUKPQV7wDDrckKBsVZ9CTw8jT0QsdEMY+2hDvLHVN
	OCO2rPTx1KVmKmjWwMXaxbCtBEUlAlu3+zdHHTHkaR0NyV/Ua6ld+TGjWxvRG8Ki/tPfrF
	q8ngN6vnBCVsDTlcDCJ63qhnkqzlsSo=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-91-NVrkeQQpPZCHyny1L-C8lw-1; Wed, 16 Sep 2020 19:43:28 -0400
X-MC-Unique: NVrkeQQpPZCHyny1L-C8lw-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 3AA14801F98;
	Wed, 16 Sep 2020 23:43:21 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 2E06871775;
	Wed, 16 Sep 2020 23:43:18 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id EF088183D038;
	Wed, 16 Sep 2020 23:43:12 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 08GNh3Ph012995 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 16 Sep 2020 19:43:04 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id CB62B1111A62; Wed, 16 Sep 2020 23:43:03 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id C6F3A1111A63
	for <blinux-list@redhat.com>; Wed, 16 Sep 2020 23:42:57 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 7D53F9063B0
	for <blinux-list@redhat.com>; Wed, 16 Sep 2020 23:42:57 +0000 (UTC)
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com
	[209.85.128.41]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-236-BrMrT7DlMhSLQ91k3Nng1A-1; Wed, 16 Sep 2020 19:42:55 -0400
X-MC-Unique: BrMrT7DlMhSLQ91k3Nng1A-1
Received: by mail-wm1-f41.google.com with SMTP id e11so3232191wme.0
	for <blinux-list@redhat.com>; Wed, 16 Sep 2020 16:42:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:to:from:subject:message-id:date:user-agent
	:mime-version:content-transfer-encoding:content-language;
	bh=ELxd90hA4Rpgciyn8fchbTe0RBiSqhZolfr19zTp+V8=;
	b=fcVIYadsBjEFV1vxZklmjUIlix6Q//1uUFgBngPzKP12eGXySenxu2j2uYBHtkRY/y
	snlBV7o271FEKEiNqfUfB8XoL2sDdhPezVyyYSNDjXkVHSeZbR5tmJt2+qDSTpqunH0i
	1nXil0fT37J1p/33Tt9RtxupZE5rXVBtMzDh7tYI3H7LLNmTF2YxJAVKkyFRWMn1xC4z
	+bq/+B6IcisIutO0ziqYpsvHjdYIUosxrgChu92EQuL+CzKqwCuCyaoORNMbO4wX5SkE
	5BZ6dtw6iS9BybfrR6sT0DnZiEeCDlimzJWvgUnDlCrzn4UL6BC230CMCLEVoed6w98U
	9PpQ==
X-Gm-Message-State: AOAM5307lxyMGffAZPMwFuA/VMtJK9bPgervSem3OHKimSlyWqHxeYkJ
	YvJx6ScxibRK69DfZmC7FYwLoXleSlgONg==
X-Google-Smtp-Source: ABdhPJw8xL7GbL9ntjs4v5FgW9+aysT5X5wX6lBqcLjhQskgG+iqZpjsz/p8wqNrVa8ixe0KfvuoLQ==
X-Received: by 2002:a7b:c92c:: with SMTP id h12mr7061491wml.121.1600299773711; 
	Wed, 16 Sep 2020 16:42:53 -0700 (PDT)
Received: from [192.168.1.130] ([87.75.178.108])
	by smtp.gmail.com with ESMTPSA id
	d124sm7770207wmd.47.2020.09.16.16.42.52 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Wed, 16 Sep 2020 16:42:52 -0700 (PDT)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Ebook readers/Orca/.mobi
Message-ID: <9e3cace0-d101-ccc7-f877-a027e90f6365@gmail.com>
Date: Thu, 17 Sep 2020 00:42:52 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
	Thunderbird/68.10.0
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false;
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Content-Transfer-Encoding: 7bit
Content-Language: en-US

So, I got a bunch of .mobi books laying around. What's best to read them 
with for Orca? Thorium gives me an import failed error when I try, so 
I'm all ears for suggestions

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

