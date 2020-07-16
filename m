Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	by mail.lfdr.de (Postfix) with ESMTP id D0EF02227CA
	for <lists+blinux-list@lfdr.de>; Thu, 16 Jul 2020 17:48:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1594914485;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=qU3eLEDv064etS8eCOjLzadUyPHaOIuEfpmPX/c9FhU=;
	b=BuyUrEmp8k9AQ/auG9fXkxXTSl+lZZD6DQ9x/zFZG7HXDK+vE2TOw9AtEywgWAn03g3GBN
	ayEYQPUnyIl7gQGSn3ehYShz72/i4k+a7pakpMtxBKz4qYEN7Qo1tQGq5mfXMWg89hnVTa
	+oeA8yv161HOcN4us6zvcjVqqWkzHsw=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-58-LMFlZlcGNtyE8YN-ufwqNg-1; Thu, 16 Jul 2020 11:48:03 -0400
X-MC-Unique: LMFlZlcGNtyE8YN-ufwqNg-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 45F561083CA2;
	Thu, 16 Jul 2020 15:47:59 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id CDB3978A43;
	Thu, 16 Jul 2020 15:47:58 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 521A596239;
	Thu, 16 Jul 2020 15:47:58 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 06GFlsSR006736 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 16 Jul 2020 11:47:54 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 5045A10CD2DD; Thu, 16 Jul 2020 15:47:54 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 4BA8110CD2D8
	for <blinux-list@redhat.com>; Thu, 16 Jul 2020 15:47:51 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 5E620843185
	for <blinux-list@redhat.com>; Thu, 16 Jul 2020 15:47:51 +0000 (UTC)
Received: from mail-pg1-f179.google.com (mail-pg1-f179.google.com
	[209.85.215.179]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-489-CeGcRx18OP-t2FRwytJ-Vg-1; Thu, 16 Jul 2020 11:47:48 -0400
X-MC-Unique: CeGcRx18OP-t2FRwytJ-Vg-1
Received: by mail-pg1-f179.google.com with SMTP id s189so5032053pgc.13
	for <blinux-list@redhat.com>; Thu, 16 Jul 2020 08:47:48 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:date:from:reply-to:to:subject:in-reply-to
	:message-id:references:user-agent:mime-version;
	bh=XBhD5Yyp+Wl1Zt/2rinIi9vtcd01FcH1d4ZrM+ZvR8E=;
	b=GdzIs6AYR+EQnXFPh7cSM/JyQrOKeANlWViNZu/qcr8woyaGPQC2cvKvX1bezdZop9
	Aiw36S8WcuJoPvFyDmqtO4T2nW3O4Swl8iNzI+frGO7KgIvnQDJZ7W8Mu+unB8xE1C1s
	XoqEm101kFYWeovj1MELMhr5FXNWz2JHspldvzkpiZ8Cnc99lkIXGkl/SnIODBwZsHv+
	kvWr4s2E9ExxS9NmZ2E90K0qlqX08ExuY+tO1UUFB5HPWjOGZHAmvB6XRaQKGy2ItAM6
	nLYLOfTUSTIRAAmwjTuoQcLIWO53Db32paCwDpWVUJNdKGsgLn7XPp2tu2zfcjZIIZIH
	L39A==
X-Gm-Message-State: AOAM532ZxMEfU6QgEBO/EQvN6gRzx4anGkcFPBr+R6Nrm652y8B/BXcW
	pasCOQoXRtmexbH9rRLm4BymleN4
X-Google-Smtp-Source: ABdhPJxofElPB7+kavH6vw1+bH6033N8x/NqBcr81djw+x1IaD20YTpivybEkT5CXb7V6qV6GkX/FQ==
X-Received: by 2002:a63:4d3:: with SMTP id 202mr4866610pge.14.1594914467213;
	Thu, 16 Jul 2020 08:47:47 -0700 (PDT)
Received: from tom-M2800 (207-118-110-238.dyn.centurytel.net.
	[207.118.110.238]) by smtp.gmail.com with ESMTPSA id
	c134sm5087232pfc.115.2020.07.16.08.47.46 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
	Thu, 16 Jul 2020 08:47:46 -0700 (PDT)
Date: Thu, 16 Jul 2020 08:47:40 -0700 (PDT)
X-X-Sender: tom@tom-M2800
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Raspbery which os
In-Reply-To: <fd69e654-2c7f-c4fe-90fb-6f3b4798ff6b@gmail.com>
Message-ID: <alpine.DEB.2.21.2007160846220.31407@tom-M2800>
References: <fd69e654-2c7f-c4fe-90fb-6f3b4798ff6b@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Content-Transfer-Encoding: 7bit

I have 2 cards for mine with raspbian on one and ubuntu on the other so I 
can choose which os I want to work with.  Since I do most of my stuff at a 
console I haven't dealt with the desktop much.

Tom

On Thu, 16 Jul 2020, Linux for blind general discussion wrote:

> Hi,
>
> I will buy Raspbery pi 4 B with 4 Gb ram. Which os is the best for blind user 
> to get a good computer? Raspbian, or is it possible to install Arch with 
> Mate? It has ARM processor, so maybe Ubuntu will work or not?
>
> Thanks,
>
> Pavel
>
>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://www.redhat.com/mailman/listinfo/blinux-list
>
>

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

