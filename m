Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B852754EEE
	for <lists+blinux-list@lfdr.de>; Sun, 16 Jul 2023 16:09:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1689516557;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=D4uPZQbmOAc925qVJ54vKZPWvOFyMDmomKEKVZRQEAA=;
	b=G4HiorG6GGKN9q5YhmHD8PRqR7chXQRYd9pXxJodpma0/j94grULncac/t8+u1zaDuTudb
	fbdUsra6+QpsuDcAVRrgBr8nK7j1CeanFym+xe3+SguReTL5lUkiUoJU3ez8hebPjfaith
	Rgdcrwf8R0ExrRZ8AeM56i4x2+A5eyA=
Received: from mimecast-mx02.redhat.com (66.187.233.73 [66.187.233.73]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-445-rlco4hGqNV6_FYDdTbziVA-1; Sun, 16 Jul 2023 10:09:13 -0400
X-MC-Unique: rlco4hGqNV6_FYDdTbziVA-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com [10.11.54.1])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 0179D29AB3E6;
	Sun, 16 Jul 2023 14:09:11 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 4C2C040C2073;
	Sun, 16 Jul 2023 14:09:10 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 996EB1946597;
	Sun, 16 Jul 2023 14:09:09 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
To: blinux-list@redhat.com
Subject: Re: Attention chime: the podcast client
Date: Sun, 16 Jul 2023 09:04:32 -0500
MIME-Version: 1.0
In-Reply-To: <mailman.83.1689515407.687813.blinux-list@redhat.com>
References: <mailman.119.1689509513.687817.blinux-list@redhat.com>
 <mailman.83.1689515407.687813.blinux-list@redhat.com>
User-Agent: POP Peeper Pro (5.4.6.0)
X-Spam-Flag: NO
UI-OutboundReport: notjunk:1;M01:P0:kWjTsL0Tn7g=;9Ci/Mg9QRUP3qnYwPupVoewxrWk
 1WMVMCrLWuyhDOo+2NXDox2VP+GjpXEyQA8e07NXdW0JCnf45aiWCZlnF8O6RVmWgGq4IFMn4
 uE5QKq+ovGzqi22bx1KlVzVpshqfRGS4vDdf6d0eEj75KgrbOX4ceyyNOVjlCo9M+neBc8gZr
 Ma+j4pXgB7uSZzJXpYwKTGxk6fI+seNRfTDBF3drXdVZKH57+0TmHLE7tTGWUq94hat88Sxac
 XZp7OAAojeNXES8Vh5GRUjU7RcA9ZGQXrX33ddAM+Lz0r4xFmIWH7Yr7gsbjGgih2e43x1Gdm
 r19SIEQglufkhbC3vn6wYtW3Pkgm3CCmZmpLkDhYG4VMswLQAdse+aknKnrYwficnYBMyR6gX
 IYCkE/aHdARsai5gZtWoaL4h80ez7vU7nDK9yL0hFXVM/h8LWO/R5rSiRgJ5bx/iZOzuu9Spt
 l85LeXeYCSO+McgJT/N0EootCSCHSQpPtYCPBV8n+1e6gGgEbDUJhGxtmlLc5lc7jV7QzOBgS
 86N1+FJAks5F+Qu3DlrN1iSjwuo6DE8Wjn9l4YiEkGR+A+BbvuVDC2TnyknuGpOvv47jiJbFb
 0/r0p9x+15BiykEFfNOwEFzE5poHhhx6rUKkS+mpZjn8D9Fc/cYuC+8AJApIJ3QOBaCFhw5iC
 xyYB5ccwaHjF713vJ7v1NegILFI9GfWRYaqSWhHoeIvYPN2+cI45hzJbfYulhxk6qth0LcZkU
 H0neqkMn0WbPS+BV6J2FYBcPqkN8lAVnGab0/uKhfwwsTHvmXCbms5v2s+aHPiYoXvYNChRCT
 y9GKhwYtvuOI84O4zrRaW2xKbwlrss7NyAXDy7o3LccUh+xTav562J0ANy1s19m6BOq6Hk8l1
 jX7QL4YxQA2ygHF6XAZYJcFWCfsyRIX/Ay6Ni05S6fYga9ZP9fO8serVsFE5vOra5xtCuAqYS
 O+zCPbKixJMkC97UDidIqEumk2Y=
Message-ID: <mailman.98.1689516548.687812.blinux-list@redhat.com>
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

I ask because i'm on arch and not debian, which is the format you provided.
Thanks. Definitley interested to try this out.

----- Original Message -----
From: Linux for blind general discussion <blinux-list@redhat.com>
To: Linux for blind general discussion <blinux-list@redhat.com>
Date: Sun, 16 Jul 2023 06:50:00 -0700 (PDT)
Subject: Re: Attention chime: the podcast client

> While I don't, I will save your request for Marc, who put this together for us.
> Thanks
> Chime
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

