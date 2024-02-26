Return-Path: <blinux-list+bncBCVPTHE7K4IIZM7QVYDBUBE62MSHW@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-yb1-f198.google.com (mail-yb1-f198.google.com [209.85.219.198])
	by mail.lfdr.de (Postfix) with ESMTPS id 83DCA866973
	for <lists+blinux-list@lfdr.de>; Mon, 26 Feb 2024 05:54:38 +0100 (CET)
Received: by mail-yb1-f198.google.com with SMTP id 3f1490d57ef6-dc6dd6e4b49sf743637276.0
        for <lists+blinux-list@lfdr.de>; Sun, 25 Feb 2024 20:54:38 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1708923277; cv=pass;
        d=google.com; s=arc-20160816;
        b=x7WUHVtkqW5tkL7e/u0tolCpS8i5N9o6c2AX5QCZh4D0+j4Z8ediMmjatGQD4rDktX
         HXCPOwlHd+0aAvqXEMG6j32SPODLuATR44WQCUu+MwKL2izt4yuogY+NMAOC+Fyde1d8
         GTbi7YfHFrkPGM/iGEM+EG/tOCsYzZmZstTsSnT+G5QD14KXdjSBmt8dhMrnxBQsZQMH
         JKMfTwFfeL9zo+iCxVmG8DXlqVreUbVtK+JZbNbcTqXn0jNIe5dPWBv8qPau8N7/CVzN
         wF64+X7XWvvegOBoxdpfZtvIVUiouImi5mMbNZbfl/ecVaQEJdXJItKHxa/1YlkVsXUA
         +WAw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:mime-version:references:message-id
         :in-reply-to:subject:cc:to:from:date:delivered-to;
        bh=go7BSu8mPY9/iG580yJIH1yFPi2wzIOvhKvJht7mMbE=;
        fh=GueDJksnp9OvZ4ZQLqgcWWE1pmFxZcS8gSyHj/CP3Fw=;
        b=slpmhyD7A9gdyL3BDWswtVvAM0sfbDUSqBp4mn9zW84yNvbKu2/FPxcD55s+N/sMGw
         33RDPB4BJGfHMUoPzT9+JeaP6HoBwRGOkP7hdVYNAt8v41csSX7vlBwfruHmGrOuhzPK
         UrYsuZ8Ogl0lFU4UlHS3IvTI/tivbbxMHX6nMtXaVI1EpVW+681PKtr9dH/gj68JSA99
         wzDbN+ttwsg5ZJC5BsN58mRev41+N62MEv5DWH9ddZ0rh6yLRG0wulir2ZXJSDj8PN6T
         3QOLbTZ+gF2gbNeXn2VtDOI62F1C8S+QZx6nstTY3UKcKNaHR3MZFfIrAbBOsN7N6igZ
         sttw==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) smtp.mailfrom=klewellen@shellworld.net
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708923277; x=1709528077;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:message-id:in-reply-to:subject:cc:to:from:date
         :delivered-to:x-beenthere:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=go7BSu8mPY9/iG580yJIH1yFPi2wzIOvhKvJht7mMbE=;
        b=W9UTifXd3/crWmSBQLHuTBjZY0DnA/N3atT6wRO0j7DTPXNTaHBvOu6wd2dihbFTjn
         5iyiS2YaZMBTEZtJJD357go8QWuNl+uFrl58o7wntNN3r0oYPBDjxgklGBW/19btb3BE
         qkOkDWLTZRAEr6m0lryvfk1CZlTAIAZqaFT37JreFJHatMa912ecxnK3iKjBFK4x5Iaw
         Okh52YEWQwppRinD0ezLLDcp7nhwAGfnIviJyM9p7og5KiGMMXbhy6TO4/Lj1HF6sqcK
         aETc09WqbdwaOtUfvSMLKpRmMb3kOM9KjVCqR5CPjWjQP7kOpQkxt3Iwxo2jFFUEvTou
         Q1bw==
X-Forwarded-Encrypted: i=2; AJvYcCWiwUQdbEdxhHtr3/fYmJPZ6ZLTyq9xyBpgYP7QkPD2vpcSrWTmdJC+ns4fkCV3LNg7wGU/fMSylk4urhS5QrOXk6JzV72y+vYR
X-Gm-Message-State: AOJu0YyG5oJArzvPlsddbomIRdqUdNHuBdkMsLls4RIdguyVkCiypp/x
	5C81+R6ywq0IzI6ZA5YkWc5TWvkxFsfEQWdaHHAYx+5LqVliJVHY7qdX2tlh7rI=
X-Google-Smtp-Source: AGHT+IEL0BaVCjLEFLTK29D1xPI/VTtxlfKD/St+1oYmO2D9MAkrdSJW06Bgmg6ARaJKlzK4HXyZtw==
X-Received: by 2002:a25:99c8:0:b0:dcc:82d9:776b with SMTP id q8-20020a2599c8000000b00dcc82d9776bmr1835828ybo.6.1708923277268;
        Sun, 25 Feb 2024 20:54:37 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a25:df0a:0:b0:dc7:4363:dc02 with SMTP id w10-20020a25df0a000000b00dc74363dc02ls169786ybg.1.-pod-prod-06-us;
 Sun, 25 Feb 2024 20:54:36 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCXJibZBtNL7y/H/2sHLn9r3/5GWGw81bq5dbU3Ca091+fAc/XZD0QsvO1jORq1Xwt84NR6kx06vVoT+70HFCBVykWv7LJ39EPPJ7Uy8
X-Received: by 2002:a25:cec6:0:b0:dc6:bbeb:d889 with SMTP id x189-20020a25cec6000000b00dc6bbebd889mr4225217ybe.52.1708923276168;
        Sun, 25 Feb 2024 20:54:36 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1708923276; cv=none;
        d=google.com; s=arc-20160816;
        b=zExeLicGB6ta6Kome3qTIfUXnGCrdMajiZ/UGqkORbrFLqGno+U0tw7rdx8RX9Cul/
         5DjPLWkG7Qy12WIrCWK4AcxmWXO7qY2I5SIP99zdzjlWfKyWOMDJSLGJucjqq8JaykuB
         nMtlbBdWi7NxKB6VhUtJG2ZmUdZdd/UlOMNacOybrnW7FFqYpqF9SHWTxLXw9yiSFeAX
         Sj9T2tb2tOnL7CjY3Mc5SIip6LJVDdZQEkR2hhcN6JKDOsjsutcWkQwbFeMe8snhDugf
         vCGiVQ6OBMPcRxalOHpfeMs1JO6XADAtlEF0ojsa3huSqExdShFErxVBooSbKCNP3tA/
         InqA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:message-id:in-reply-to:subject:cc:to:from
         :date:delivered-to;
        bh=go7BSu8mPY9/iG580yJIH1yFPi2wzIOvhKvJht7mMbE=;
        fh=o31MPG88Q+nrbXK9KHtvAH+yW5euOet/hA/WPxG8KSc=;
        b=IfeAOFWNKg0b7oSkAYB2HziECWiJbZ2FuAKNAPGoRnmZJYr3x71aEDjifKTROg+UNH
         TEJznL3ke78fFpu4eDplQTAjBa3pyzBytw/1U7O3rbtkZXa9du70ltcktijeGMgZN9No
         5iWIy3RlsnOmplZK0M6SkpCq/BfSpCbJFPLdwDYCkA773xB7+OQzjdi2AbtmUv+o+Gh0
         TrPBssCLtRutflPxBFnhb73xJmdv4OGLmWrSrSifpx1yaHJnU6rVtfFpyDzqGbJ6/hoj
         kD4bu4v2tK7q6MIfz1u6W1DajFBYszfTWeIYO9EEVKbdYzI6rkCk6Afk+2ciZBdemKJa
         OZVg==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) smtp.mailfrom=klewellen@shellworld.net
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [207.211.31.120])
        by mx.google.com with ESMTPS id o16-20020ac85a50000000b0042e4e762f21si4481887qta.322.2024.02.25.20.54.35
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 25 Feb 2024 20:54:36 -0800 (PST)
Received-SPF: pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) client-ip=23.24.6.165;
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-615-MeF6Uba_PY2fNXLNCD7NsA-1; Sun, 25 Feb 2024 23:54:34 -0500
X-MC-Unique: MeF6Uba_PY2fNXLNCD7NsA-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.rdu2.redhat.com [10.11.54.7])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 3623582DFE4
	for <blinux-list@gapps.redhat.com>; Mon, 26 Feb 2024 04:54:34 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id 3294F1C06710; Mon, 26 Feb 2024 04:54:34 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id EEEF01C060B1
	for <blinux-list@redhat.com>; Mon, 26 Feb 2024 04:54:33 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 98E7D83B82A
	for <blinux-list@redhat.com>; Mon, 26 Feb 2024 04:54:33 +0000 (UTC)
Received: from atlas.bondproducts.com
 (23-24-6-165-static.hfc.comcastbusiness.net [23.24.6.165]) by
 relay.mimecast.com with ESMTP id us-mta-630-FQzpUvicPYiqpcBCw8vF-A-1; Sun,
 25 Feb 2024 23:54:31 -0500
X-MC-Unique: FQzpUvicPYiqpcBCw8vF-A-1
Received: from users.shellworld.net (users.shellworld.net [50.116.47.71])
	by atlas.bondproducts.com (Postfix) with ESMTP id D0A484050A;
	Sun, 25 Feb 2024 23:54:30 -0500 (EST)
Received: by users.shellworld.net (Postfix, from userid 1005)
	id 8FE23100BE8; Sun, 25 Feb 2024 23:54:30 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by users.shellworld.net (Postfix) with ESMTP id 8EAE510007F;
	Sun, 25 Feb 2024 23:54:30 -0500 (EST)
Date: Sun, 25 Feb 2024 23:54:30 -0500 (EST)
From: Karen Lewellen <klewellen@shellworld.net>
To: Rich Morin <rdm@cfcl.com>
cc: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: archival social media for the blind?
In-Reply-To: <971136C7-7CB2-4BF6-9528-60C5255889FF@cfcl.com>
Message-ID: <Pine.LNX.4.64.2402252345480.900490@users.shellworld.net>
References: <971136C7-7CB2-4BF6-9528-60C5255889FF@cfcl.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.7
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: shellworld.net
Content-Type: TEXT/PLAIN; charset=US-ASCII; format=flowed
X-Original-Sender: klewellen@shellworld.net
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of klewellen@shellworld.net designates 23.24.6.165 as permitted
 sender) smtp.mailfrom=klewellen@shellworld.net
Precedence: list
Mailing-list: list blinux-list@redhat.com; contact blinux-list+owners@redhat.com
List-ID: <blinux-list.redhat.com>
X-Spam-Checked-In-Group: blinux-list@redhat.com
X-Google-Group-Id: 304886998071
List-Post: <https://groups.google.com/a/redhat.com/group/blinux-list/post>, <mailto:blinux-list@redhat.com>
List-Help: <https://support.google.com/a/redhat.com/bin/topic.py?topic=25838>, <mailto:blinux-list+help@redhat.com>
List-Archive: <https://groups.google.com/a/redhat.com/group/blinux-list/>
List-Unsubscribe: <mailto:googlegroups-manage+304886998071+unsubscribe@googlegroups.com>,
 <https://groups.google.com/a/redhat.com/group/blinux-list/subscribe>

Hi Rich,
firmly owning that I am speaking personally,  and fully realizing you 
write from a positive place, I am a little confused by your question.
Have you ever done a search on yourself?
YOu might be surprised just how much is actually  archived, from lists and 
the like.
I will add that because there is, again speaking absolutely personally, no 
such thing as a uniform approach to technology by those who  live with 
sight  loss, there is not going to be a solution based on such a concept. 
a shared label does not a shared experience make.  Many not using adaptive 
tools use html, and text..the program Rudy suggested was not written for 
those experiencing sight loss.  I imagine little about Linux was created 
from this dictionary.
This group is hosted at google groups, unless the list is private, I 
imagine searches produce posts here, although I might be mistaken.  Google 
grows increasing less friendly to those preferring lower graphics 
environments, many many people are upset about losing gmail in basic html, 
who   do not experience sight loss in any fashion.
So, at least for me speaking personally, I do not fully understand  what 
you  are asking if that makes sense?
Which it may not laughs.
Karen



On Sun, 25 Feb 2024, Rich Morin wrote:

> Reading the recent discussion of tools to convert docx files to text, I was reminded of thoughts I've had about archival social media for the blind.  Of course, as a sighted person, my thoughts may well be ill-considered, but I figure it can't hurt to ask for folks' reactions.
>
> Basically, it seems odd to me that there aren't (AFAIK) any comprehensive forums, let alone wikis, that serve the blind and visually disabled.  So, for example, Karen's question and Rudy's answer are very likely to be forgotten in fairly short order.  Of course, if a mailing list is archived and then harvested by an LLM, the information might be preserved.  However, that's more of a possibility than a certainty.
>
> So, here's my question: What form(s) of social media might work well to record and preserve the thoughts and discoveries of the blind and visually disabled?  Is there already something that I simply don't know about?
>
> -r
>
> -- 
> You received this message because you are subscribed to the Google Groups "blinux-list@redhat.com" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.
>
>

