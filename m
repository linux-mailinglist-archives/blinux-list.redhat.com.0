Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 46F346ED063
	for <lists+blinux-list@lfdr.de>; Mon, 24 Apr 2023 16:36:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1682346962;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=ElFEFPzluB8c4zfMFRLEJMwPmgzisrOdZz++TsJWLxo=;
	b=BIF4HPBr0TdbVh6zSkcZfhAiCB2AyqvjZNayiNqjq2rVl2Vjrs645281HRC2ymvXtiOySe
	6JgZAEvrPOjV9DeSjgrQ0p0DIzStsO++794cXwDkeoO45EAhY09/rxyrDzgzQjBtDrvVuY
	o39HeITv+iji1/jcjzyfzv+9mYH9KYY=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-67-m2gfMfHvM7K5_TM_iHoyfQ-1; Mon, 24 Apr 2023 10:35:58 -0400
X-MC-Unique: m2gfMfHvM7K5_TM_iHoyfQ-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com [10.11.54.1])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 8161C29ABA0B;
	Mon, 24 Apr 2023 14:35:56 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id A21C840C201F;
	Mon, 24 Apr 2023 14:35:48 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id D39AE1946595;
	Mon, 24 Apr 2023 14:35:47 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
To: blinux-list@redhat.com
Subject: Re: wsl drive problem
Date: Mon, 24 Apr 2023 09:31:00 -0500
MIME-Version: 1.0
In-Reply-To: <mailman.439.1682345527.2351822.blinux-list@redhat.com>
References: <mailman.439.1682345527.2351822.blinux-list@redhat.com>
User-Agent: POP Peeper Pro (5.4.5.0)
X-Spam-Flag: NO
UI-OutboundReport: notjunk:1;M01:P0:845Cau/mxE4=;8hWjwNWjcVisKJXtqRRROxRUcrb
 z+Llj9cg1+w5MFFPuSxQP/CNTUcZqC9AITp8oeAaKqzUvWXurkc08JNopo8h3/lLcAou87UiJ
 e83AES7PxpafSMLRSz69qnT9Mfsuu5hDBIwwOr1jCIwrKoJl4DpoLE3y+DnFp0EouJohWuaOM
 r2kwR9QMXBxtEfpB9v+VEuXYV1ZqVf/+bVi/aMg0n6Y74bjaSuyL9OzFX7MRzftTD0sxSbvZR
 jOVlGPDU2Yred6RKQVuZBa40Hw+EUR+WjSiMuN8J9UovcygeRoZhMWx0YKRyHSGyuevE+PgsE
 qiYgar3HJq4T6Z/Xzl1mK+3hsYTqfQa/o73D4Ly7/fV7gnsmDHUzlFmbQrfzDCaDdDnUWVxPz
 ma0jiWkealVBbDlJnBNweTUOh3LLJCxf4ZvlnSDZc/KEm4zwAJbk7397QeCbpPmJVqTMYzPlL
 dmRgNivQ8a7ExjhB86G+3QEx1IzPvxpWDZix7IBwcJaIRcM5FOPxbS1jn+sW6rJhBc0jS2FKm
 ekNACvn8/VNUc76K1BoiwlfU/gLoYDzaYNDUieRpITZ4wQAQ5swFbkDZ2uHHFzGu0+4xAFZh+
 p+N45XGHo5P/n5KKbShQY5v1RmPalTvZdJyfLiHrrfWK+49uxlv2AkWoc1wGFM1nXE0eEgaw8
 nkaTQND+GibEAWS82T/SsVm1pBZkRJtkru+hErEm/c+DJlCnPQqt6Slj0Nzf4Daz7tRqOSKc9
 cuOSdZU0ck98NARlu/i5lGikm0PFGDCM+E894CJKx4HyTliiNn1CL36haYxaBBocyvwlYMh6a
 w+qnKXORQe+hYDOaaQwte7spqkfci1Mr/CItwuOlSRvtm05w1F57GsEbbHhJUxic7x287V/5g
 EQ95RDsbbRBj/B1bF415AHAldj9+npTH36cVb6wrVgTo4bUPPNrTo+B1aSYzPCa7Od+GezJvb
 ddhcWhgbp+utw4yUe5ClDs++ZxQ=
Message-ID: <mailman.387.1682346946.2351825.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.1
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

That's not how you access it.
Drives are located under /mnt
So you'd go
cd /mnt/c/users
cd /mnt/d/temp
and so forth.
----- Original Message -----
From: Linux for blind general discussion <blinux-list@redhat.com>
To: blinux-list@redhat.com
Date: Mon, 24 Apr 2023 10:12:02 -0400
Subject: wsl drive problem

> hi, i'm unable to access my windows drive within wsl dmesg says sda is 
> write protected. does anyone know how to fix this. thanks
> 
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list
> 
> 

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

