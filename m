Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
	by mail.lfdr.de (Postfix) with ESMTPS id 78FDD1C02A
	for <lists+blinux-list@lfdr.de>; Tue, 14 May 2019 02:37:53 +0200 (CEST)
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id A9358BCD24;
	Tue, 14 May 2019 00:37:51 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id C4BA9600C6;
	Tue, 14 May 2019 00:37:49 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 3882741F58;
	Tue, 14 May 2019 00:37:47 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
	[10.5.11.12])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id x4E0bdjw013383 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 13 May 2019 20:37:39 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id E747660FE4; Tue, 14 May 2019 00:37:39 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx1.redhat.com (ext-mx12.extmail.prod.ext.phx2.redhat.com
	[10.5.110.41])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id DFD402B8A0
	for <blinux-list@redhat.com>; Tue, 14 May 2019 00:37:37 +0000 (UTC)
Received: from mail-ot1-f41.google.com (mail-ot1-f41.google.com
	[209.85.210.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id 79549308A953
	for <blinux-list@redhat.com>; Tue, 14 May 2019 00:37:36 +0000 (UTC)
Received: by mail-ot1-f41.google.com with SMTP id 66so13610066otq.0
	for <blinux-list@redhat.com>; Mon, 13 May 2019 17:37:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:references:from:message-id:date:user-agent:mime-version
	:in-reply-to:content-transfer-encoding:content-language;
	bh=VKTyUolWG5OUetOz3BmGZEKnvkRoX8RVQMKclTHBkRY=;
	b=Sxgk8gKSCQw8o7lcX1jC7q1Scc8XcW0D1jj2PLX10N8uXCVfJ+aTqAS3RTo5VcGIXJ
	HaHEyTiA7KmIlZ8V4X32TnTYIc+PngXHaV3WSsoDK4cCs4hXqBBPfUV3ZoqcuexAzQcJ
	3IJHOp3TDwxver5Z/61MfOIBW1vFkoiKKbWy4RH4e4LBBy0RjsHzYT8XPNCI+TyRQEuH
	jpdffU7PGnBy0KLfH7wxxS2DX6+j4K6Wkm2BqoQeISLFe7m8ublapijUwt2xQar9jUnP
	wIR92u+bv3imNGLPXrFrGdU6NKGsyTQgsb4a5+EJgWFJqk1qNCxgM1qU33GY2RQbyVu0
	ZEVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=VKTyUolWG5OUetOz3BmGZEKnvkRoX8RVQMKclTHBkRY=;
	b=Uj0uTa7U4/u1itvhMRN5w+YaTRzAJNNSJh/zQmO8uGzXkfRTCCy9hvR3LI75nP8DAl
	ajARv+XnTdQ/CUeuIGnLeUt5+IaimW1ZylZ0HooFUkYyGmEK1Njf3MxQ8B6uLg1IegGW
	KU+k5+z1MgCnVfa/NOPQWRWSYkfb6xP0O5mFNtpYOAZFggD2MDRv+CPMwX6iX8cWX05Z
	LjhlKx/prdBctmstuc8FOvthQ6a7TGx/YKCzD9OIzgudBNgvfnW2otm4m2mAndnzqMDl
	B2AsEk4b6QKJvMCtSjsTPxz2F1wyY6pYbCObyMcb17Pe+ikiH3vA/riKBadmyrSUy2a5
	uvbA==
X-Gm-Message-State: APjAAAVl7W+bbk5RA63QDz5vi/XoDBgDCZ1+nXsDmlTipjm5DFoOkFtc
	v+GaH8C9iJj4sJwWLEGiNYBamYav
X-Google-Smtp-Source: APXvYqwVsWuELPf4piCcn2awbYDRgA9eL8hv/zocZCFHoRjJteqNP/PgqqXa956yWWg/eWVWcbtNow==
X-Received: by 2002:a9d:6013:: with SMTP id h19mr18029315otj.215.1557794255798;
	Mon, 13 May 2019 17:37:35 -0700 (PDT)
Received: from [192.168.1.11] (74-194-137-49.gtwncmta01.res.dyn.suddenlink.net.
	[74.194.137.49])
	by smtp.gmail.com with ESMTPSA id f5sm4421477oto.67.2019.05.13.17.37.35
	for <blinux-list@redhat.com>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 13 May 2019 17:37:35 -0700 (PDT)
Subject: Re: chromium and chromevox puzzle follow-up
To: blinux-list@redhat.com
References: <alpine.NEB.2.21.1905132000140.25364@panix1.panix.com>
Message-ID: <bcdb34f0-46cf-b261-cc4a-8e5218a063a9@gmail.com>
Date: Mon, 13 May 2019 19:37:34 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <alpine.NEB.2.21.1905132000140.25364@panix1.panix.com>
Content-Language: en-US
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
	(mx1.redhat.com [10.5.110.41]);
	Tue, 14 May 2019 00:37:36 +0000 (UTC)
X-Greylist: inspected by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.41]);
	Tue, 14 May 2019 00:37:36 +0000 (UTC) for IP:'209.85.210.41'
	DOMAIN:'mail-ot1-f41.google.com' HELO:'mail-ot1-f41.google.com'
	FROM:'chaltain@gmail.com' RCPT:''
X-RedHat-Spam-Score: -0.11  (DKIM_SIGNED, DKIM_VALID, DKIM_VALID_AU,
	FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	SPF_PASS) 209.85.210.41 mail-ot1-f41.google.com 209.85.210.41
	mail-ot1-f41.google.com <chaltain@gmail.com>
X-Scanned-By: MIMEDefang 2.84 on 10.5.110.41
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.38]); Tue, 14 May 2019 00:37:52 +0000 (UTC)

I can't see the original post, but if just pressing the 's' key is 
starting selection mode then it looks like the ChromeVox or prefix key 
has been remapped. I'd suggest going into ChromeVox settings and 
resetting the key map back to the defaults. Note that this shouldn't be 
a problem with ChromveVox either.




On 5/13/19 7:02 PM, Linux for blind general discussion wrote:
> Fortunately this problem with the s key starting and ending selection in
> edit fields is limited to chromium with chromevox installed since firefox
> and other browsers can log into google and gmail with no difficulty.  This
> is good since this is limited to chromium and chromevox and goes no
> further.
>
>
>
> --
>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://www.redhat.com/mailman/listinfo/blinux-list

-- 
Christopher (CJ)
Chaltain at Gmail

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list
