Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E8AD6919E9
	for <lists+blinux-list@lfdr.de>; Fri, 10 Feb 2023 09:19:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1676017188;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=VpdGObAwsOeGFq+jkwVyJovVoov5CD4P2+b4HJb+PUw=;
	b=KcWe+3lggsrtV7eGu1aNJtP5nbFMVP7NhoG/SO3yfoOht7uLhXJ5y/FaMYldhoRViDhEHC
	yWw6Z0oqUG03z5PRn+b+RACKTxdL5QX1y8cCM8MpSSA8iWcRS0p+kMXElPybM97TIPa/+H
	4Uxgx8WkfZQlaJadM8yoo+nmw6qBHiA=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-484-X8iyAwG2M1S9jnwwmkQkRA-1; Fri, 10 Feb 2023 03:19:44 -0500
X-MC-Unique: X8iyAwG2M1S9jnwwmkQkRA-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com [10.11.54.4])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 168ED38173D0;
	Fri, 10 Feb 2023 08:19:43 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id CDCEE2026D68;
	Fri, 10 Feb 2023 08:19:40 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 51B1E19465A2;
	Fri, 10 Feb 2023 08:19:40 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Fri, 10 Feb 2023 09:19:30 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Subject: Re: carbonyl: Chromium based browser built to run in a terminal
To: blinux-list@redhat.com
References: <mailman.5886.1675981319.8177.blinux-list@redhat.com>
In-Reply-To: <mailman.5886.1675981319.8177.blinux-list@redhat.com>
Message-ID: <mailman.5695.1676017179.8169.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.4
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: de-DE
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Am 09.02.23 um 23:16 schrieb Linux for blind general discussion:
> 
> has anyone tried carbonyl already with brltty or espeak?
> 
> https://github.com/fathyb/carbonyl

OK, tried it myself now. Does not work unfortunately :-(. It can be 
started in pure textbased terminal, but the interface is still graphical 
and not like in w3m or lynx :-(.

Ciao,

   Schoepp

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

