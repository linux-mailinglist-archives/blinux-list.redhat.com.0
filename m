Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id B5508758B36
	for <lists+blinux-list@lfdr.de>; Wed, 19 Jul 2023 04:14:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1689732844;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=zVfTPfT6bxzrP7iB2kRP84D23z50uU0v123oAOgVrEA=;
	b=PsGWOoae560MedSjhJ658FIZMJvP+/Mm+2ElpOBa14XEhbEHysIlX5deJt40Mi8COZQtxO
	52FjQFESpdo1OnP4w0MR4qYa7CIsfL0AuDitELT8Y9OL7hwHGVU2uMBE6hbGRWYOHjnRDk
	QFV133YzSqEO6LcYnmBnndor5O+chfg=
Received: from mimecast-mx02.redhat.com (66.187.233.73 [66.187.233.73]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-216-St62aFTBM22X962QwimG2Q-1; Tue, 18 Jul 2023 22:14:00 -0400
X-MC-Unique: St62aFTBM22X962QwimG2Q-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com [10.11.54.5])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id ACE08380662D;
	Wed, 19 Jul 2023 02:13:58 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 3982FF6CCF;
	Wed, 19 Jul 2023 02:13:54 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 9975419465A4;
	Wed, 19 Jul 2023 02:13:53 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Tue, 18 Jul 2023 23:13:17 -0300
MIME-Version: 1.0
Subject: Re: Console E-mail client for my need
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <mailman.489.1689716021.687810.blinux-list@redhat.com>
 <mailman.444.1689724770.687819.blinux-list@redhat.com>
In-Reply-To: <mailman.444.1689724770.687819.blinux-list@redhat.com>
Message-ID: <mailman.516.1689732832.687810.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.5
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: pt-BR
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Thanks Tim; I'll check it out.

Best,
Cleverson

Em 18/07/2023 20:52, Linux for blind general discussion escreveu:
> Tim here.  In addition to Mutt, NeoMutt, aerc, mh/nmh, and sup
> already mentioned here, there's also the venerable mail(1) (sometimes
> packaged as "mailx" or "heirloom-mail) program.  It's just a
> mail-reader, relying on your system mail configuration to send mail,
> so that could be a simple redirector like msmtp(1) or dma(1), or
> configuring your system MTA (whether sendmail, exim, postfix, or
> opensmtpd) to send mail via a smart-host.
> 
> Similarly, there's "s-nail" which has a similar linear interface,
> but also supports IMAP and SMTP directly.
> 
> All of them should allow you to use the external editor of your
> choice.  Do note that, if your external editor forks into the
> background, the mail program will launch the editor and return
> immediately, so you might have to tweak your editor invocation to
> use some sort of "don't fork" option (gvim has a --nofork option)
> 
> -tim

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

