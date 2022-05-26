Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id E2E00534EA6
	for <lists+blinux-list@lfdr.de>; Thu, 26 May 2022 13:54:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1653566058;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=k1L3v9CxhRPJwrJ2CBlcXFbjTRRXvtfULg9p5YddN+E=;
	b=O89cTzZug8dxF3GitC5aJqS8GUQl2gsdwv4afpy7yjq5r7sWXBFSH/bwdzy5tr+Do2Nn9E
	L8fZvS9DRIysRSPnHoZ/lCh7j0XnfkKnfoHULMueJHJMHFl1bWAtsChIuS+Q/Dnq5KN+CF
	xFZAVeqktzbeZnUkrkbbIhw5Zwz58f0=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-328-eVsmRxc_M5ODGhyhkxH9ag-1; Thu, 26 May 2022 07:54:15 -0400
X-MC-Unique: eVsmRxc_M5ODGhyhkxH9ag-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com [10.11.54.5])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id A8BC729AB3FE;
	Thu, 26 May 2022 11:54:13 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 91E8D82872;
	Thu, 26 May 2022 11:54:09 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id D9341193212D;
	Thu, 26 May 2022 11:54:08 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Thu, 26 May 2022 07:53:49 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.0
Subject: Re: Google gmail cutting off alpine
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <mailman.18712.1653517340.111206.blinux-list@redhat.com>
In-Reply-To: <mailman.18712.1653517340.111206.blinux-list@redhat.com>
Message-ID: <mailman.18356.1653566048.111210.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 2.79 on 10.11.54.5
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

unsure if thunderbird can do it via oauth also.


Yes. I've been able to use Thunderbird in that way with Gmail for some 
time. It redirects to Google and asks me to allow the application 
instead of getting a username and password. This of course is specific 
to Thunderbird though, and I can't remember if Seamonkey works the same 
way. That said, I do seem to recall Evolution redirecting to Google in 
much the same way, so it may still work also. Doesn't solve the 
text-based client issues, but if Alpine in fact has figured out a fix, 
that would in fact solve the problem there.

~Kyle

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

