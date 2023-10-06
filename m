Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C2987BB896
	for <lists+blinux-list@lfdr.de>; Fri,  6 Oct 2023 15:07:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1696597666;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=X5U368YJaM7kLUT5SeMG9DKjhzY44BBJF4TRR2ZgS28=;
	b=IxhUegST7SHVkWdb+HohGe/xBumKYO16P6wA+x0uOMq1ZGI6CRQ7BcAdmdt8M0nMg6ItUq
	rIFc0jE8jJQPxV3Iy4Jt+GHMquULFzlMoQWW4/RPhBOzouiyCw5ESRD5T/Pv20DXj4nPFk
	Bdu/e6J8AhcEOYnTx/tm64LaEWEJK/M=
Received: from mimecast-mx02.redhat.com (mx-ext.redhat.com [66.187.233.73])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-576-Em5-wDP-NJSBx9h7HGK5qQ-1; Fri, 06 Oct 2023 09:07:42 -0400
X-MC-Unique: Em5-wDP-NJSBx9h7HGK5qQ-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.rdu2.redhat.com [10.11.54.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 91D1B1C0BB40;
	Fri,  6 Oct 2023 13:07:40 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id F2DD5140E950;
	Fri,  6 Oct 2023 13:07:37 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 1CAAF19465B7;
	Fri,  6 Oct 2023 13:07:37 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Fri, 6 Oct 2023 09:07:25 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Subject: Re: Very minimal graphical environment
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <mailman.1669.1696587735.2981449.blinux-list@redhat.com>
In-Reply-To: <mailman.1669.1696587735.2981449.blinux-list@redhat.com>
X-Spam-Flag: NO
UI-OutboundReport: notjunk:1;M01:P0:4qaO0cZUXdI=;gcl3jH+Gh+mL8ddTYRbWZB1b7Ky
 j/bqJdr7NTfZz+kM5ZfpxmO1t9eu0AdXuJuSqIy/PM7FYkNd2FZtb+0MItrT91zcOuld5bzdP
 CQZwarb0lmuhvJWCc1rDnB8X+3XaDckBsJC7CoxR1QPE2mOwjYN/fklRVuDyoANc8BUqNu+kz
 34jaqctfh77CujMzdkQObZiN/BurBIPPgkC/QZ1q9ukvM3gG41/rg5dPz9iRGOR28gk2gMGd2
 RCR0uuzYehsHgVAvSYU0okjfcxCPB8odgOQ56E1u4zJ3cWIv3d3eMlkeKeGX9Vp41WXFO9OtP
 4r4Z+GP09khTfumMVDV70Nq4sQZiVzg+ylyxXiLeVrN7doKqvBZlbJfivuMuJJEI8SLG2ay0/
 MWSR66PIQy0IRBdkP8woOTdDOGlMNKHmI0m419i459xs8NrAMipCshhjdzZmbO7X2X1pFjTv9
 URlP1hOh4g51Vrb+QnQyYUxmAHkPSxZEG0Aci6VrUICt7stgSm0DmGITdWao/CR3DnEqlUs/k
 orrNXmPeeG5wXkit0vS0UWd3htA1qDIE9DxajK880Af8j2rxetwSGAvEpy7TqQgPGL99epQDN
 AHOMdcv6TOlLbCSA3R9DmVOr/yVJ5K223y8s2EvtgMUl17bzUKdo1uqPVpe6sdTeNyO0QopJC
 wzmpQuH3TkOrCVUt4yU4qA98r9SaX44XOXS+BegMbfPeGeSQ3TPeaU7UChLVQmt91D5MlSGg1
 s7yNk4VT4uQLDV2Zol2H7KgDZ9SDma45t14vtARM2QsA1rYJ1aA/AE2KkpgndawGdJI3Dm1lC
 G6bPYLXtPZBFiV3ycanoiDw1jpE1vkpSFCnabguCz9BlNLR+kO6i0xC3SwLUjA1yXZO85tOp+
 kjdv12BduCxO6cegaYA0sabuFp1K6aLZGzWo2k0k3fenZHL5bK9brSLfbWbHIftNEpwOZyxyt
 mrfy62FETj5ksJS8TjPqunRVy4o=
Message-ID: <mailman.1641.1696597656.2981445.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.7
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

I worked some years back on a menu system that had some scripts that
would start a very small window manager and run Orca and the browser,
email, whatever required a graphical environment. This system was
designed to be self-contained and distro-agnostic, although as I recall
it used jwm as the tiny window manager that started the graphical
environment. Have a look at

https://gitlab.com/f123/Kies

I'm thinking some of the scripts you'll find there may help. If I
remember correctly, they would even stop Fenrir trying to speak as the
text console became a graphical one and start it back up once the
program you wanted exited. Hope it helps.

~Kyle

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

