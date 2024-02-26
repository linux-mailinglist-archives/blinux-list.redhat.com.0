Return-Path: <blinux-list+bncBCVPTHE7K4IKTRPPVYDBUBBEHGMAQ@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-ot1-f70.google.com (mail-ot1-f70.google.com [209.85.210.70])
	by mail.lfdr.de (Postfix) with ESMTPS id BCD65866768
	for <lists+blinux-list@lfdr.de>; Mon, 26 Feb 2024 02:00:27 +0100 (CET)
Received: by mail-ot1-f70.google.com with SMTP id 46e09a7af769-6e497598248sf1139419a34.2
        for <lists+blinux-list@lfdr.de>; Sun, 25 Feb 2024 17:00:27 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1708909226; cv=pass;
        d=google.com; s=arc-20160816;
        b=XdQCzyLdL/4CN6vPijaAiN2rqshirkpKt587mx1RJvIfzqPPk1/1jmPZXFyBJFTQYB
         HvDd3opa5HBC7iLKesN8JM3XXDHPDVNHSQ1xYB8EcxT/EAF51nG8yW1tKyOC3z5tNyJc
         7kefbPnwpOMb4eMDNHHZ5YVq3aGzjDd+rIi9a85uGataRlJ/LbI64gYKirxx2zj7Tyyr
         zvrO+WcR5ZBufGhKN8N1xNFhCJJakjw0k2TnGWrdXZuYMaOXKD2yXiBRTlUj2oPGFny9
         8H8xKhi19eK47ebVHNPfKBR0LlxguYrVWrjjfnwVYKys2IsSklPHEwj8KvLiMZhN6lyA
         5iaA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:mime-version:references:message-id
         :in-reply-to:subject:cc:to:from:date:delivered-to;
        bh=mPz18BPuh0GVrKnC0HEFX6zXe/NX7nS46bY2yYFCvxs=;
        fh=sb13VUPBAKdmYGdSSRVUDQvpb3ClurQCOSQhYqMDpHo=;
        b=U6+6p87TyDGtLSP/bgOcvQTn3ts3r3mdCm6rJyZMlZT2BXbhWJUUW1uHRa4kAs7bUt
         vyzns0D12nenxerGDKkxD8FVWBKiGm3vuFXfGhRO02Fvmr7jkuUAL16c20TSvBQdZYq9
         dibXLUtchTUAQ94U8FWUUJhd7NUMcTw2oEct18gUASZDJE3sLm+gfTndu0E1tNJBKpn+
         0Qqd61A5aeiYzOlLcZZsfNrX9NLMYbRnAkRLtU3cJmk06puPOcNb1HWLF2kEjwBUzbx/
         oQLTnoczTaiGUTvhDfM0S1M58c8sxaGKhpE6uU9mMtPqP/buV+wQbNZnVcJfkiMn8N6d
         XDDw==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) smtp.mailfrom=klewellen@shellworld.net
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708909226; x=1709514026;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:message-id:in-reply-to:subject:cc:to:from:date
         :delivered-to:x-beenthere:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=mPz18BPuh0GVrKnC0HEFX6zXe/NX7nS46bY2yYFCvxs=;
        b=YWnkLa7vRzys5uM1Wzywvj/GljXMuSFqTT3IlM59jOafZwbGgeTttQ+1Dy8B00fjjb
         LlyspS2/NVeP3xd40CZITMjCwk/dN73PEF7B5wmhKP8C5VNdIZi5IjIqFk7iebpZIelv
         BUWXnoa6mLOMKv/dP9eqHhcFsc3e8Qc9qOkAsD1nwvfNi5NctDVLg2K3XfJDObxonioo
         opH+mtCCS3zSz/qhue25d/dzxuIErpskI9kZyK8ZExiKQlx0Q3T3Kp6NWTd4fr7k9FMc
         65wWkpKrL/Zguabe2TBWkBe8x8TSiIrqCSFkn6Gxlp8H9tv9YYuZeK/ySBCS8221ybch
         wGFw==
X-Forwarded-Encrypted: i=2; AJvYcCWmWgx7hAVMzlBcFGtc2eLAi/a8Z5NuJvTkZSDwTVFF5TNVRawRPoa0fS7oI0fmS5TpUvswWavyNRhPDJAhp0RC7Rnjp5PMk8Lm
X-Gm-Message-State: AOJu0Yx75C5a1td+0ghHgMGBAVrprnpxIcmo9XW7VVCj34tZ2Ezigp4N
	VaZlpBA5dT0fmN6ZuE5EPq7JGcoUhSiVW7Ax6mlZgJdYEHy/8wTIdrtDatMzkVE=
X-Google-Smtp-Source: AGHT+IEOqYtSyMuhJTfd0XMb/JnzISH9+s25Yz0Qu4rhlMoYiJRbjvyjrUHimuXKH393Aatw2Dflmw==
X-Received: by 2002:a05:6830:c4:b0:6e4:7dc2:29b8 with SMTP id x4-20020a05683000c400b006e47dc229b8mr6189983oto.12.1708909226034;
        Sun, 25 Feb 2024 17:00:26 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a4a:a9c8:0:b0:598:74b6:da43 with SMTP id h8-20020a4aa9c8000000b0059874b6da43ls2504998oon.1.-pod-prod-04-us;
 Sun, 25 Feb 2024 17:00:25 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCVaYu2qq0w2L2t+J0/7npn54yQhvqmUvKHgE0ra2beTER0jCQQTR7r5DwJ/Ly0br1ECfIQBKztj4VD+5DPHBnN3RtR8akqQ7Y5v0TLU
X-Received: by 2002:a05:6808:2126:b0:3c1:5c16:74cb with SMTP id r38-20020a056808212600b003c15c1674cbmr7655310oiw.7.1708909225296;
        Sun, 25 Feb 2024 17:00:25 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1708909225; cv=none;
        d=google.com; s=arc-20160816;
        b=y1NHr3wwbbJd60lfLe6WC17iZNKgAo1f+7h5TeinHcr616fBD6E3tvSYTr+kUPmDM+
         jvnxbsT0yhDnNFMZ6SssMt7wicnQfB+BcwG4HFJQM+ABsme+OR0c/LEDmdI6xnQf8Eeb
         4AZnky6FhqLGCF0u8AVNvUhtY+bI4v1+ZnYOgB2mjuwqruSOWD4gFDjs7ypbuIVupe3p
         AuNYrvP6cukHyDU8QGjEuy7ZHPN9slIdHX9HkAw/KhQ1cV+X9XNg42jHPtt6cIaKOgDW
         LroUz/oU8ApMFvkLJx5vuX4Ws7klcFwmYnsdGdu2pzK+bRzPNdFzK+lisx1/d9ocazfU
         cSTQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:message-id:in-reply-to:subject:cc:to:from
         :date:delivered-to;
        bh=mPz18BPuh0GVrKnC0HEFX6zXe/NX7nS46bY2yYFCvxs=;
        fh=afeQqVKmYf9Me5LKKoc1/L+JG9TzQiygF/Tjngx+Kf8=;
        b=GCenB00BsTT3E5cNS0kRJqBum1/qFaW8EAg2F4UzwWVvW5POm2u4M9ZhItjoz9nHKm
         COrsjQQnQ0s4zFADQPuBR2tugONwHeQGr1cpr2M4oEA9JxvSvZYxuARh8xkSfG0wF4c6
         eW1ft5bJ8bOBh/yjoZGtNBrkOGTAq+yOkb9Duu9yzeUVRs8B0AlW0sSsfzgfcNCmHei9
         MArzb7d7PADdF+wD33WnQejujX+DLa/k39ucr2H7VQVI+T0sICl55mK8j8beR0RGwwou
         qK1Fpph1e34Ac2/8XCKBqrJxc0OmCujsl+1eX5aNekVHY+RMF8zIxQtfFZsMlonXslVP
         BQJA==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) smtp.mailfrom=klewellen@shellworld.net
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [207.211.31.120])
        by mx.google.com with ESMTPS id c11-20020ad45aeb000000b0068fe057717fsi4107478qvh.139.2024.02.25.17.00.24
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 25 Feb 2024 17:00:24 -0800 (PST)
Received-SPF: pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) client-ip=23.24.6.165;
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-383-VpyZfwktO7C-7OsG6cinlg-1; Sun, 25 Feb 2024 20:00:22 -0500
X-MC-Unique: VpyZfwktO7C-7OsG6cinlg-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com [10.11.54.4])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 644CF82DFE0
	for <blinux-list@gapps.redhat.com>; Mon, 26 Feb 2024 01:00:22 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id 613872026D0A; Mon, 26 Feb 2024 01:00:22 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast08.extmail.prod.ext.rdu2.redhat.com [10.11.55.24])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 296D920155E6
	for <blinux-list@redhat.com>; Mon, 26 Feb 2024 01:00:21 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id CBD0E380406C
	for <blinux-list@redhat.com>; Mon, 26 Feb 2024 01:00:21 +0000 (UTC)
Received: from atlas.bondproducts.com
 (23-24-6-165-static.hfc.comcastbusiness.net [23.24.6.165]) by
 relay.mimecast.com with ESMTP id us-mta-300-Jgn0iLv1MOGGcWUuH6LPzw-1; Sun,
 25 Feb 2024 20:00:19 -0500
X-MC-Unique: Jgn0iLv1MOGGcWUuH6LPzw-1
Received: from users.shellworld.net (users.shellworld.net [50.116.47.71])
	by atlas.bondproducts.com (Postfix) with ESMTP id 99B554050A;
	Sun, 25 Feb 2024 20:00:18 -0500 (EST)
Received: by users.shellworld.net (Postfix, from userid 1005)
	id 4BB0B100BE8; Sun, 25 Feb 2024 20:00:18 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by users.shellworld.net (Postfix) with ESMTP id 4A49D10007F;
	Sun, 25 Feb 2024 20:00:18 -0500 (EST)
Date: Sun, 25 Feb 2024 20:00:18 -0500 (EST)
From: Karen Lewellen <klewellen@shellworld.net>
To: Rudy Vener <salt@panix.com>
cc: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: pandoc and the docs format?
In-Reply-To: <ZdvfpQXrW8k516Tq@panix.com>
Message-ID: <Pine.LNX.4.64.2402251957470.897936@users.shellworld.net>
References: <Pine.LNX.4.64.2402251934330.897574@users.shellworld.net>
 <ZdvfpQXrW8k516Tq@panix.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.4
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

Hi Rudy,
My end goal is text, not html, sorry if my post was confusing.
Will check for docx2html though...appreciated to learn of the program.
Can anyone answer my pandoc question though, since I already know that 
program is here?
Thanks,
Karen



On Sun, 25 Feb 2024, Rudy Vener wrote:

> Check if you have docx2txt installed, and if not, ask shellworld to install it.
> Once you have a document in text, you can convert it to html easily.
>
> Rudy
>
> On Sun, Feb 25, 2024 at 07:38:51PM -0500, Karen Lewellen wrote:
>> Hi All,
>> We have pandoc installed here at shellworld, with my using it most often to
>> convert epub files into html..then using lynx to make those  text files.
>> I have a d. o. c. x. file however.
>> previously I would use basic gmail to convert these, but that door is closed
>> now.
>> Will pandoc change  these into html?
>> Because the format if not actually a word . doc file, antiword will not
>> convert them.
>> Ideas?
>> Thanks,
>> Kare
>>
>
> -- 
> Rudy Vener
> Website: http://www.rudyvener.com
> Check out my latest story: Downgrade, at https://www.scifishorts.co/authors/rudy-vener
> Need a Limerick Fix? Visit https://limerickdude.substack.com
>

