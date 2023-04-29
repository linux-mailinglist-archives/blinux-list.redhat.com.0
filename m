Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id AF7F96F2530
	for <lists+blinux-list@lfdr.de>; Sat, 29 Apr 2023 17:26:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1682781994;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=9vEojblW23dIxzoNkv4Y44QSi5xRTGg3GvLT1mtsKEs=;
	b=OgJa146TdiL8ljp0OU6q8PvGvW09hnlGrUp1ufrC7G4lENVTI2Lui75/wQsQejtIjz4Pxa
	Hz7rztBA0nJL5bKfS1Tk5nJAXrUjbUrP/abMHyLTMMpRTNfC75WaYJM48inPJaBSKdTsgc
	8jNObD2nNo7EMlr7KN2QlHTSUIla4/4=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-102-SSOT1-s8MruIlZbesHeaWA-1; Sat, 29 Apr 2023 11:26:30 -0400
X-MC-Unique: SSOT1-s8MruIlZbesHeaWA-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com [10.11.54.5])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 6ED0029A9D46;
	Sat, 29 Apr 2023 15:26:28 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 45F1F51E3;
	Sat, 29 Apr 2023 15:26:25 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 7E8FD1946A49;
	Sat, 29 Apr 2023 15:26:24 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Sat, 29 Apr 2023 11:26:07 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.1
To: blinux-list@redhat.com
References: <mailman.55.1682769294.290942.blinux-list@redhat.com>
 <mailman.69.1682775602.290935.blinux-list@redhat.com>
Subject: Re: Accessible tty apps
In-Reply-To: <mailman.69.1682775602.290935.blinux-list@redhat.com>
Message-ID: <mailman.72.1682781984.290938.blinux-list@redhat.com>
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
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"


On 29/4/23 09:39, Linux for blind general discussion wrote:
> I found that `mc` and `vifm` were a bit noisy on the screen, while
> `nnn` was much more straight-forward.  So that's where I'd suggest
> starting.
If you like Emacs, you can use Dired mode for file manipulations.
> That said, most of the time I just use the usual command-line
> commands (ls, mv, cp, ln, rm, etc) and globs.
I do the same, as it's usually faster, especially with tab completion of 
file and directory names.
I would also support the recommendation of Mutt for e-mail.

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

