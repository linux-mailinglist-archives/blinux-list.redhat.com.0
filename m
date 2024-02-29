Return-Path: <blinux-list+bncBCVPTHE7K4IMVX77VYDBUBD73EM5S@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mail.lfdr.de (Postfix) with ESMTPS id 5628B86BF1B
	for <lists+blinux-list@lfdr.de>; Thu, 29 Feb 2024 03:45:32 +0100 (CET)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-42eb2f6fb68sf4571331cf.0
        for <lists+blinux-list@lfdr.de>; Wed, 28 Feb 2024 18:45:32 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1709174731; cv=pass;
        d=google.com; s=arc-20160816;
        b=FJ1AxrJ40xEFqgEGYD7Sq16rIfblX41rh3UiRUd8lpZghmfkKR3sCedmOlKq8d9tWY
         Yz7YzI8bHv5X5BOhNcOp+p8ideffjjDoq/EEWQ5q0dwp3ZovAyS0ds7801/PnP/PTJgp
         9T9sMyTPpZhpaPkwFkTUhIPLz3Z1+JqgMQHIk5yMjerOnndAuSSMuzTwM2sbQWDn3H51
         KNqHKgDT40/SD8ARPrtqSgJnjWmn7sjF91F5ua14u/0ya53ghNqXTdio+7UtYrUrLHgU
         AfQK+k4XSrFBggr3dWuCT8GZXCnd4kkuq4czdmeDXfQ//FMgmWUbLR2V2hK0czIlDZPU
         zv/w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:mime-version:references:message-id
         :in-reply-to:subject:cc:to:from:date:delivered-to;
        bh=SZlnNr7kxJbXghk0TqrpFOcXn/ER065p/vdDhYl/2YI=;
        fh=X0WYRx3OviBu71c8z3mnSNX3QvALcN9xCyvnkX3NZYU=;
        b=gwqFwFO3Sxraez9pyhmn1d+9EhOcRo5BHn1CsrnViJevq2EfKW8I+Q5HLyubk9JiSW
         PQhDSv82mfGdiIeUnF3IGZRyM/XTWPRjKjUqju8OQpcyPIbm3OHR1YukUnWtrW8R9IW2
         rrOsSrWb3+BIbZLI3hUlo7uSjAM7iySgN4reM40JxDnfMJ++DyFjLobhIOj298LgUYCm
         9lEE5ae/olE4BfEd3ytFF2h5LBPWbloQv9kEUQHn2dam2xNYOqIBZ274jptPUgtNNAnT
         n1W7BRjd2egy8/w+AuA/B59gea5pPvcvQdwiqRbZCS6eA/TZIL/ZVizokQk76bsw5BK4
         UlLQ==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) smtp.mailfrom=klewellen@shellworld.net
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709174731; x=1709779531;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:message-id:in-reply-to:subject:cc:to:from:date
         :delivered-to:x-beenthere:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=SZlnNr7kxJbXghk0TqrpFOcXn/ER065p/vdDhYl/2YI=;
        b=YS/lsS6Ivqzr2EhuMpKn81vg1Xz3xXDxvCjksIHGP7n06GELoatJL0/rUuvH15/FN5
         RWY7b0KPlSAZ7c6dJaLG7rp6qwFJ1skoKuQf/Keh6uU98ra6iLtJQUstR4WIcbr+4pFr
         v31ojPkDmGACyYp0rSSv+QVbzG1no63RIaPvsbZnequUO/bUax2Jxpfvxo9l3VmvvMCb
         aTVFSCgt0zBBGZaSUmt9OjU1+rF6EIOTUw01qUx6pWAec6BuGzbX9tLW0voFYcLT8cI6
         if/c0qUEYtqVvO28PPqNTxpg/T4HYMyTfCMfNE90rYNWqZUvwzGD+n5yjk51dXr9BGf/
         2YLw==
X-Forwarded-Encrypted: i=2; AJvYcCVwwvhE4G039tDbHOEgW8baGmiAbJuLUeDEAiuIEUoLduBzudFz01TAPaCTYBSmgifcHHgoSS93JAG1dGb0H2OtZS1pvxZj1AKE
X-Gm-Message-State: AOJu0YxLljpZ/IgoMqOVgfzihT56lKw1wvvMBXmcO3qkLQfThMpbjmge
	Mieje4g6r/x6rmsIO9AdYoYq/nJvmFaAhE3IT6rz1qA5LtqTVV2U9Wp7DF2ZfhQ=
X-Google-Smtp-Source: AGHT+IFM9VTfrvQ7Y3opntvhn9sj+tlRB5bjX5tuuU+auDD06A0gk7ZTXwLAN/Rui7opBEf7Ospt1g==
X-Received: by 2002:ac8:5dce:0:b0:42e:814e:e0c8 with SMTP id e14-20020ac85dce000000b0042e814ee0c8mr795037qtx.47.1709174730994;
        Wed, 28 Feb 2024 18:45:30 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:622a:28b:b0:42e:7f55:df6b with SMTP id
 z11-20020a05622a028b00b0042e7f55df6bls567802qtw.2.-pod-prod-01-us; Wed, 28
 Feb 2024 18:45:30 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCWxWavC1dNFH4hnVgYSJ3KZdynD6KDOPp+rJFBOURuESVob7093cn1kgc62nVeYjGg8M5CAdeKme8fJMY0I5zZxRdlqzVYqIE+BlQv2
X-Received: by 2002:ac8:5f95:0:b0:42e:b44a:1e4f with SMTP id j21-20020ac85f95000000b0042eb44a1e4fmr881602qta.4.1709174730045;
        Wed, 28 Feb 2024 18:45:30 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1709174730; cv=none;
        d=google.com; s=arc-20160816;
        b=uBtgpyYIfGuVYz60oD+Us7rt52xltxZRfegWovgKClahnu45qWrOa2EiXlGLVTnbFq
         1wdk5bw8jpFBlRGcSLVZ1wV/qqQI3IsGw6Ljs7Q8rdL2Hqln0i85oUAChtvLI8AKOSV4
         BxY5V+FAvB18NZcIbtoKYqioOInjAwCOmTVt2HfyQ96g4x53shLfS06A62myjFbhRcI/
         UuioxqV1Boxcaikxu0u2K6qN/F6rs1jQvoaG/5Vx66eirfElqebtMr6xXKJ1lsRNWdA3
         28C5HPEugeXV79Tf5bjitEvJS07Aai+3Vbthhyq13M1ipiIDsZLUxsix9r9cLrh30fjA
         g/bA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:message-id:in-reply-to:subject:cc:to:from
         :date:delivered-to;
        bh=SZlnNr7kxJbXghk0TqrpFOcXn/ER065p/vdDhYl/2YI=;
        fh=zDMQH/MiTWddxzGyScm9OtYvjWRWlca8nHg2qv3FsqM=;
        b=NmyTm56muBBpbmKaIbakHUJq0sUDXtTSfuyOnFB8sb6SBDzPfhGXbTUz+4gLNnlF1s
         3lJpks5e1vwHEF152TXF3e24Hbe+HEKOIwCm/SwzJtcFWMibeOjxi3GEbEBMhSgU+ZFT
         48IaYkf+2jxJXZZxPDKXaoRMUPO9X4JgieFZxRbIx6uEibrM164HkHaatpf16Lk/bWWs
         FPrV69hW3Eq5wA2HwuROVNzsH7deS/JU8DmxmcQNU6If5Pun/e9UjAFP+oqefT9pRtsu
         UyzwHKbJ5hezPkARbDuA5PY3u7jsTW709fEDecftPvnnl78u0W6NjSWYaxHxXSsTrNtU
         Thkg==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) smtp.mailfrom=klewellen@shellworld.net
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [205.139.110.120])
        by mx.google.com with ESMTPS id o2-20020a05622a008200b0042e977c051fsi557559qtw.537.2024.02.28.18.45.29
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Feb 2024 18:45:29 -0800 (PST)
Received-SPF: pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) client-ip=23.24.6.165;
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-30-YWAr-H_6Pzi7SdtzHqpP0w-1; Wed, 28 Feb 2024 21:45:28 -0500
X-MC-Unique: YWAr-H_6Pzi7SdtzHqpP0w-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com [10.11.54.5])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 86DF482DFE2
	for <blinux-list@gapps.redhat.com>; Thu, 29 Feb 2024 02:45:12 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id 837A91097C; Thu, 29 Feb 2024 02:45:12 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast08.extmail.prod.ext.rdu2.redhat.com [10.11.55.24])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 4AA9811309
	for <blinux-list@redhat.com>; Thu, 29 Feb 2024 02:45:12 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id E96683869154
	for <blinux-list@redhat.com>; Thu, 29 Feb 2024 02:45:11 +0000 (UTC)
Received: from atlas.bondproducts.com
 (23-24-6-165-static.hfc.comcastbusiness.net [23.24.6.165]) by
 relay.mimecast.com with ESMTP id us-mta-690-nonCTAVyOSSPYHvYdbxwjw-1; Wed,
 28 Feb 2024 21:45:10 -0500
X-MC-Unique: nonCTAVyOSSPYHvYdbxwjw-1
Received: from users.shellworld.net (users.shellworld.net [50.116.47.71])
	by atlas.bondproducts.com (Postfix) with ESMTP id 4EF6B44FC6;
	Wed, 28 Feb 2024 21:45:09 -0500 (EST)
Received: by users.shellworld.net (Postfix, from userid 1005)
	id 0B7C71000BA; Wed, 28 Feb 2024 21:45:09 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by users.shellworld.net (Postfix) with ESMTP id 0A44E1000B6;
	Wed, 28 Feb 2024 21:45:09 -0500 (EST)
Date: Wed, 28 Feb 2024 21:45:09 -0500 (EST)
From: Karen Lewellen <klewellen@shellworld.net>
To: Janina Sajka <janina@rednote.net>
cc: blinux-list@redhat.com
Subject: Re: pandoc and the docs format?
In-Reply-To: <Zd9CjhZah67fJKZQ@rednote.net>
Message-ID: <Pine.LNX.4.64.2402282142580.952223@users.shellworld.net>
References: <Pine.LNX.4.64.2402251934330.897574@users.shellworld.net>
 <Zd9CjhZah67fJKZQ@rednote.net>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.5
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

the pandoc -i  option lets me skip the html  need since it goes directly 
to text.
Does the process work in reverse?
lets say I want to create a .txt file, then convert it to docx?
Just curious.
Karen



On Wed, 28 Feb 2024, 'Janina Sajka' via blinux-list@redhat.com wrote:

> Try a command like:
>
> pandoc -i file.docx -o file.html
>
>
> Best,
> Janina
>
>
>
> Karen Lewellen writes:
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
>
> Janina Sajka (she/her/hers)
> Accessibility Consultant https://linkedin.com/in/jsajka
>
> The World Wide Web Consortium (W3C), Web Accessibility Initiative (WAI)
> Co-Chair, Accessible Platform Architectures	http://www.w3.org/wai/apa
>
> Linux Foundation Fellow
> https://www.linuxfoundation.org/board-of-directors-2/
>
> -- 
> You received this message because you are subscribed to the Google Groups "blinux-list@redhat.com" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.
>
>

